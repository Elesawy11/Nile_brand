// import 'package:device_preview_plus/device_preview_plus.dart';
// import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/firebase_options.dart';
import 'package:nile_brand/nile_brand.dart';
import 'package:nile_brand/simple_bloc_observer.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  serviceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(NileBrand());
}

class NileBrand extends StatelessWidget {
  const NileBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return const NileBrandBody();
  }
}
