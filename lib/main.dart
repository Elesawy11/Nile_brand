import 'package:flutter/material.dart';
import 'package:nile_brand/nile_brand.dart';

void main(List<String> args) {
  runApp(NileBrand());
}

class NileBrand extends StatelessWidget {
  const NileBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return const NileBrandBody();
  }
}
