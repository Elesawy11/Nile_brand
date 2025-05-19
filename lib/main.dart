// import 'package:device_preview_plus/device_preview_plus.dart';
// import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';
import 'package:nile_brand/firebase_options.dart';
import 'package:nile_brand/nile_brand.dart';
import 'package:nile_brand/simple_bloc_observer.dart';

import 'features/Owner/create_brand/data/models/create_brand_response_body.dart';
import 'features/Owner/owner_helpers.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await BrandPrefs.init();
  Hive.registerAdapter(BrandDataAdapter());
  Hive.registerAdapter(CreateCuoponSuccessAdapter());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 await serviceLocator();
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
