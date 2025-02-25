import 'package:flutter/material.dart';

Color app_theme_bg = Color.fromRGBO(246, 247, 249, 1);
Color app_theme_blue = Color.fromRGBO(25, 103, 210, 1);
Color app_theme_blue1 = Color.fromRGBO(76, 129, 201, 1);
Color app_theme_blue2 = Color.fromRGBO(56, 67, 113, 1);
Color app_theme_grey = Color.fromRGBO(127, 127, 127, 1);
Color app_theme_grey0 = Color.fromRGBO(233, 234, 238, 1);
Color app_theme_grey1 = Color.fromRGBO(204, 204, 204, 1);
Color app_theme_litewhite = Color.fromRGBO(255, 255, 255, 0.2);
Color white = Colors.white;
Color grey4 = Colors.grey.shade400;
Color black = Colors.black;
LinearGradient background_gradient = LinearGradient(
  colors: [Color.fromRGBO(0, 64, 152, 1), Color.fromRGBO(89, 159, 255, 1)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

// class Demo extends StatefulWidget {
//   const Demo({super.key});

//   @override
//   State<Demo> createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return Container(
//             decoration: BoxDecoration(gradient: background_gradient),
//             child: SingleChildScrollView(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(
//                   minHeight: constraints.maxHeight, // Ensures full height
//                 ),
//                 child: Column(
//                   children: [
//                     // ✅ Fixed Height Container
//                     Container(
//                       height: displaysize.height * .4,
//                       width: displaysize.width,
//                       child: Padding(
//                         //fixed sized
//                         padding: EdgeInsets.only(
//                             top: displaysize.height * .05,
//                             right: displaysize.width * .04,
//                             left: displaysize.width * .04),
//                         child: Column(
//                           children: [
//                             custom_back_button(context, 'Edit profile'),
//                             Expanded(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   //content
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),

//                     // ✅ Flexible Growing Container
//                     LayoutBuilder(
//                       builder: (context, boxConstraints) {
//                         return Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.only(
                                  // topLeft:
                                  //     Radius.circular(displaysize.width * .04),
                                  // topRight:
                                  //     Radius.circular(displaysize.width * .04)),
//                               color: app_theme_bg),
//                           constraints: BoxConstraints(
//                               minHeight: constraints.maxHeight - 200,
//                               minWidth: constraints.maxWidth // Remaining space
//                               ),
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: displaysize.width * .04),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   height: displaysize.height * .02,
//                                 ),
//                                 Text("Title",
//                                     style: TextStyle(
//                                         fontFamily: 'general_sans',
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: displaysize.height * .025,
//                                         color: app_theme_blue2)),
//                                 SizedBox(
//                                   height: displaysize.height * .03,
//                                 )
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
