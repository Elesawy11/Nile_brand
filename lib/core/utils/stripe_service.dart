import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:nile_brand/core/networking/api_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/stripe/data/models/payment_intent_input_model.dart';
import 'api_service.dart';
import 'service_locator.dart';

class StripeService {
  final ApiService apiService = ApiService();
  final String token =
      'Bearer ${getIt.get<SharedPreferences>().getString('token') ?? ''}';

  Future<Map<String, dynamic>> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel, String orderId) async {
    try {
      final response = await apiService.post(
        body: {'orderId': orderId},
        // contentType: Headers.jsonContentType,
        url: 'https://nile-brands.up.railway.app/api/v1/payments',
        token: token,
      );

      // Access response.data to get the Map<String, dynamic>
      final responseData = response.data as Map<String, dynamic>;

      if (responseData['success'] == true) {
        log('method success:::::');
        return {
          'clientSecret': responseData['clientSecret'],
          'paymentIntentId': responseData['paymentIntentId'],
        };
      } else {
        throw Exception(
            'Failed to create payment intent: ${responseData['message'] ?? 'Unknown error'}');
      }
    } catch (e) {
      throw Exception('Error creating payment intent: $e');
    }
  }

  Future<Map<String, dynamic>> confirmPayment(String paymentIntentId) async {
    try {
      final response = await apiService.post(
        body: {'paymentIntentId': paymentIntentId},
        contentType: Headers.jsonContentType,
        url:
            'https://nile-brands.up.railway.app/api/v1/payments/confirmPayment',
        token: token,
      );
      log('confirm done success');

      // Access response.data to get the Map<String, dynamic>
      final responseData = response.data as Map<String, dynamic>;

      return responseData;
    } catch (e) {
      throw Exception('Error confirming payment: $e');
    }
  }

  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentClientSecret,
          merchantDisplayName: 'Nile Brand',
        ),
      );
      log('init done success');
    } catch (e) {
      throw Exception('Error initializing payment sheet: $e');
    }
  }

  Future<void> displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      log('display done');
    } catch (e) {
      throw Exception('Error displaying payment sheet: $e');
    }
  }

  Future<Map<String, dynamic>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel,
      required String orderId}) async {
    try {
      // Create payment intent through your API
      final paymentIntentData =
          await createPaymentIntent(paymentIntentInputModel, orderId);

      // Initialize payment sheet
      await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentData['clientSecret'],
      );

      // Display payment sheet
      await displayPaymentSheet();

      // Confirm payment through your API
      final confirmationResponse =
          await confirmPayment(paymentIntentData['paymentIntentId']);

      return confirmationResponse;
    } catch (e) {
      throw Exception('Payment failed: $e');
    }
  }
}
