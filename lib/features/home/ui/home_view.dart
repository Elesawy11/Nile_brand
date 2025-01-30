import 'package:flutter/material.dart';
import 'widgets/stack_of_advertisment_list_view_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          StackOfAdvertismentListViewWidget(),
        ],
      ),
    );
  }
}
