import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/sizing_information.dart';
import 'package:responsive_architecture/utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation
    ) builder;
  const BaseWidget({Key key, this.builder}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    
    return LayoutBuilder(builder: (context, boxConstrains) {
      var sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceScreenType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxConstrains.maxWidth, boxConstrains.maxHeight),
      );
      return builder(
        context, sizingInformation
      );
    });          
  }

}