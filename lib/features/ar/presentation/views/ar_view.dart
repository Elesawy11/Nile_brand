import 'package:camerakit_flutter/lens_model.dart';
import 'package:flutter/material.dart';
import 'package:camerakit_flutter/camerakit_flutter.dart';

class ArScreen extends StatefulWidget {
  const ArScreen({super.key});

  @override
  _ArScreenState createState() => _ArScreenState();
}

class _ArScreenState extends State<ArScreen> implements CameraKitFlutterEvents {
  late final CameraKitFlutterImpl _cameraKitFlutterImpl;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cameraKitFlutterImpl =
          CameraKitFlutterImpl(cameraKitFlutterEvents: this);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              _cameraKitFlutterImpl.openCameraKit(
                groupIds: ['d91ba3cf-2ee5-48f5-9894-127702c7419a'],
                isHideCloseButton: false,
              );
            },
            child: Text('View Product', style: TextStyle()),
          ),
        ],
      ),
    );
  }

  @override
  void onCameraKitResult(Map result) {
    // TODO: implement onCameraKitResult
  }

  @override
  void receivedLenses(List<Lens> lensList) {
    // TODO: implement receivedLenses
  }
}

// class Constants {
//   static const List<String> groupIdList = [
//     'YOUR_LENS_GROUP_ID_1', // Replace with your Lens Group IDs
//     'YOUR_LENS_GROUP_ID_2',
//   ];
// }
