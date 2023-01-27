import 'dart:io';

import 'package:web3auth_flutter/enums.dart';
import 'package:web3auth_flutter/input.dart';
import 'package:web3auth_flutter/output.dart';
import 'package:web3auth_flutter/web3auth_flutter.dart';

class Web3AuthService {
  static Future<void> initPlaformState() async {
    Uri redirectUrl;
    if (Platform.isAndroid) {
      redirectUrl = Uri.parse('w3a://com.example.chat3/auth');
    } else if (Platform.isIOS) {
      redirectUrl = Uri.parse('com.example.chat3://openlogin');
    } else {
      throw UnKnownException('Unknown platform');
    }
    await Web3AuthFlutter.init(
      Web3AuthOptions(
        clientId:
            'BMf6D5SmZ_fqPh0aoimdnxjajqsRTwToYtjiL55YgjBDiMQD32rjQvl3I9GEEyE-tdqfLRScmbnRQiK6kpx2LX4',
        network: Network.testnet,
        redirectUrl: redirectUrl,
      ),
    );
  }

  //Login
  static Future login() async {
    Web3AuthResponse? result;
    try {
      result = await Web3AuthFlutter.login(
        LoginParams(
          loginProvider: Provider.google,
        ),
      );
      print(result);
    } catch (e) {
      print(e);
    }

    return result;
  }
}
