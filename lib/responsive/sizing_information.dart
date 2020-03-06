import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    this.orientation, 
    this.deviceScreenType, 
    this.screenSize, 
    this.localWidgetSize,
  });

  @override
  String toString() {
    return 'Orientação:$orientation Tipo de dispositivo:$deviceScreenType Tamanho de tela:$screenSize Tamanho do Widget: $localWidgetSize';
  }
  
}