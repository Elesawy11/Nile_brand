import 'package:nile_brand/core/routing/exports.dart';
import 'widgets/get_my_cart_bloc_builder.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        title: Text(
          'My Cart',
          style: Styles.font24W500.copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: GetMyCartBlocBuilder(),
      ),
    );
  }
}
