// 



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:photo_view/photo_view.dart';
import 'package:second_project/myController.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     // translations: Message(),
      // locale: Locale('en','US'),
      // fallbackLocale: Locale('en','US'),
    //  title: ,
     home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  
 
 var url="https://media.istockphoto.com/id/1345648112/photo/silhouette-of-a-person-sitting-on-the-top-of-the-mountain-with-laptop-staring-the-milky-way.jpg?s=1024x1024&w=is&k=20&c=1SK5Q9gvCzbxA970E4ZHdwyGZ-R-kyVLliEIAWJ6_iY=";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Container(child: 
      PhotoView(enableRotation: true,
        imageProvider: NetworkImage("https://media.istockphoto.com/id/1345648112/photo/silhouette-of-a-person-sitting-on-the-top-of-the-mountain-with-laptop-staring-the-milky-way.jpg?s=1024x1024&w=is&k=20&c=1SK5Q9gvCzbxA970E4ZHdwyGZ-R-kyVLliEIAWJ6_iY=")),)),
    );
  }
}

// class HomeScreen extends StatefulWidget {
  
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
//   MyController myController =Get.put(MyController());

//    TransformationController controller=TransformationController();
//    TapDownDetails? tapDownDetails;

//   //  late AnimationController animationController;
//  // AnimationController animationController=AnimationController(vsync:this,duration: Duration(milliseconds: 300));
//    Animation<Matrix4>?animation;
   
//    void initState(){
//     super.initState();
//     //anim
//    }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("UNIQUE ID")),body: Column(
//       children: [
//         // GetBuilder<MyController>(
//         //   id: 'txCount',//unique id
//         //   builder: (controller){
//         //   return Text("The value is ${controller.count}");
//         // }),
//         // GetBuilder<MyController>(
          
//         //   builder: (controller){
//         //   return Text("The value is ${controller.count}");
//         // }),
//         // ElevatedButton(onPressed: (){
//         //   myController.increment();
//         // }, child: Text("increment")),
//         // TextField(
//         //   onChanged: (val){
//         //     myController.increment();
//         //   },
//         // ),
//         // GestureDetector(
//         //   onTapDown: ((details) => tapDownDetails=details),
//         //   onDoubleTap: (){
//         //     // final double scale=3;
//         //     // final zoomed =Matrix4.identity()..scale(scale);
//         //     // final value=zoomed;
//         //     // controller.value=value;


//         //     final position=tapDownDetails!.localPosition;
//         //     final double scale=3;
//         //     final x = -position.dx * (scale-1);
//         //     final y = -position.dx* (scale-1);
//         //     final zoomed =Matrix4.identity()..scale(scale);
//         //      final value=controller.value.isIdentity()?zoomed : Matrix4.identity();
//         //      controller.value=value;
//         //   },
//         //   child: InteractiveViewer(
//         //     transformationController: controller,
//         //     clipBehavior: Clip.none,
//         //     panEnabled: false,
//         //     scaleEnabled: false,
//         //     boundaryMargin: EdgeInsets.all(80),
//         //     minScale: 0.5,
//         //     maxScale: 4,
//         //     child:Image.network("https://media.istockphoto.com/id/1345648112/photo/silhouette-of-a-person-sitting-on-the-top-of-the-mountain-with-laptop-staring-the-milky-way.jpg?s=1024x1024&w=is&k=20&c=1SK5Q9gvCzbxA970E4ZHdwyGZ-R-kyVLliEIAWJ6_iY=")
//         //  ),
//         // ),
//         PhotoView(imageProvider: NetworkImage("https://media.istockphoto.com/id/1345648112/photo/silhouette-of-a-person-sitting-on-the-top-of-the-mountain-with-laptop-staring-the-milky-way.jpg?s=1024x1024&w=is&k=20&c=1SK5Q9gvCzbxA970E4ZHdwyGZ-R-kyVLliEIAWJ6_iY="))
//       ],
//     ),);
//   }
// }