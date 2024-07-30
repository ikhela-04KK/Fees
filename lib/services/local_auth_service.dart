import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuth { 
  static final _auth = LocalAuthentication(); 

  static Future<bool>_canAuthenticate() async => await _auth.canCheckBiometrics || await  _auth.isDeviceSupported();

  static Future<bool> authenticate() async {
    try{

      if (!await _canAuthenticate()) return false;

      return await _auth.authenticate(
        localizedReason: 'Utiliser empreinte digital', 
        // authMessages: <AuthMessages>[
        //   AndroidAuthMessages(
        //     signInTitle: 'Oops! Biometric authentication required!',
        //     cancelButton: 'No thanks',
        //   ),
        // ],
        options: const AuthenticationOptions(
          useErrorDialogs: true, 
          stickyAuth: true,
          biometricOnly: false
        )
      );
    }catch(e){
      debugPrint('error  $e');
      return false;
    }

  }


  }
