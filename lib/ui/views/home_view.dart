import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
// import 'package:responsive_architecture/ui/base_widget.dart';

import 'home_mobile_portrait.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
      ),
    );

    // return BaseWidget(
    //   builder: (context, sizingInformation){
    //     return Scaffold(
    //       body: Center(
    //         child: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: <Widget>[
    //             Container(
    //               height: 150,
    //               margin: const EdgeInsets.all(50),
    //               color: Colors.red,
    //               child: BaseWidget(
    //                 builder: (context, sizingInfo) => Text(sizingInfo.toString()),
    //               ),
    //             ),
    //             Text(sizingInformation.toString()),
    //           ],
    //         ),
    //       ),
    //     );
    //   }
    // );
  }
}