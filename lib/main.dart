import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/nile_brand.dart';
import 'package:nile_brand/simple_bloc_observer.dart';

void main(List<String> args) {
  serviceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const NileBrand());
}

class NileBrand extends StatelessWidget {
  const NileBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return const NileBrandBody();
  }
}
