import 'dart:ui';

import 'package:flutter/material.dart';

ScrollBehavior scrollBehavior = const ScrollBehavior().copyWith(
  scrollbars: false,
  dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
);
