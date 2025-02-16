import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    final userId = Random().nextInt(9999);
    return ZegoUIKitPrebuiltCall(
      appID: 865094714, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "02d723be3b9e70747f4c63b833fc046d3d4b56d5a34a3d26b3fe3d22f3eb76fb", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId.toString(),
      userName: "UserName $userId",
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
