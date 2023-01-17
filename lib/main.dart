import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowMaterialGrid: false,
      home: FrontPage(),
    );
  }
}

// class FrontPage extends StatelessWidget {
//   const FrontPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Card(
//           child: Text("Chart"),
//         ),

//            Card(
//              child: Text("Transcation"),
//            ),
//       ],
//     );
//   }
// }

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => FrontPage()),
        GetPage(
            name: '/next',
            page: () => NextScreen(),
            transition: Transition.leftToRight),
      ],
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  //    Get.snackbar(
                  //         "title",
                  //         "Display the message here",
                  //         colorText: Colors.white,
                  //         backgroundColor: Colors.lightBlue,
                  //         icon: const Icon(Icons.add_alert),
                  //       );
                  //  Get.defaultDialog(
                  //   title: "Dialog title"
                  //  );
                  //  Get.bottomSheet(Container(
                  //   child: Wrap(children: [
                  //     ListTile(
                  //       leading: Icon(Icons.wb_sunny_outlined),
                  //       title: Text("Light Theme"),
                  //       onTap: ()=>Get.changeTheme(ThemeData.light()),
                  //     ),
                  //     ListTile(
                  //       leading: Icon(Icons.wb_sunny),
                  //        title: Text("dark Theme"),
                  //       onTap: ()=>Get.changeTheme(ThemeData.dark()),
                  //     )
                  //   ],)
                  //  ),
                  //  //barrierColor: Colors.greenAccent
                  //  //backgroundColor: Colors.purple
                  //  isDismissible: true,
                  //  shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(10.0),
                  //   side: BorderSide(color: Colors.white),
                  //  ),
                  //  enableDrag:true
                  //  );
                  // Get.to(
                  //   () => NextScreen(),
                  //  // fullscreenDialog: true ,//open as full screen dialog
                  //  // transition: Transition.zoom //zoom transition
                  // // duration: Duration(microseconds: 4000),
                  //  //curve: Curves.bounceInOut

                  // );
                  // Get.off(()=>NextScreen()); // go to next screen but no go back
                  //Get.offAll(()=>NextScreen());//go to next screen and cancel all previous screen/routes
                  //  Get.to(()=>NextScreen(),arguments:"Data from first screen" ); //pass data

                  // var data =
                  //     await Get.to(() => NextScreen(), arguments: "Data");
                  // print(data);//data saved when came back

                  Get.toNamed('/next'); //named route
                },
                child: Text("Open Snack Bar"))
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              child: Text("Gop bacj"),
              onPressed: () {
                // Get.back();
                //Get.back(result: "This is from nmext screen");
              },
            ),
          ),
          Text("${Get.arguments}")
        ],
      ),
    );
  }
}
