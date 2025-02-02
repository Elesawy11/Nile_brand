import 'package:flutter/material.dart';
import 'widgets/top_view_bar_widget.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: [
            TopViewBarWidget(
              tiltel: 'My Cart',
            )
          ],
        ),
      ),
    );
  }
}
