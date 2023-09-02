import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum CommMethod {
  phone,
  text,
  email,
}

extension CommMethodExtension on CommMethod {
  String get name => describeEnum(this);

  Widget get commIcon {
    switch (this) {
      case CommMethod.phone:
        return const Icon(
          Icons.phone,
          color: Colors.white,
          size: 60,
        );
      case CommMethod.text:
        return const Icon(
          Icons.textsms,
          color: Colors.white,
          size: 60,
        );
      case CommMethod.email:
        return const Icon(
          Icons.email,
          color: Colors.white,
          size: 60,
        );
    }
  }
}
