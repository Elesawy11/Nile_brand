import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'dashboard',
            style: Styles.font20W600,
          ),
        ),
        
        body: Center(
          child: Text(""),
        ),
      ),
    );
  }
}
