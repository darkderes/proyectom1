import 'package:flutter/material.dart';


class PageCount extends StatefulWidget {
  const PageCount({super.key});

  @override
  State<PageCount> createState() => _PageCountState();
}

class _PageCountState extends State<PageCount> {
  var _counter;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     
       appBar: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
       ), 
       extendBodyBehindAppBar: true, 
       extendBody: true,
       body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fondopantalla.jpeg"),
            fit: BoxFit.cover,
          ),
       ),),
     );
    // return Stack(
    //   fit: StackFit.expand,
    //   children: [
    //     const Image(
    //       image: AssetImage("assets/images/fondopantalla.jpeg"),
    //       fit: BoxFit.cover,
    //     ),
    //      Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Column(
    //         children: [
    //           const Text("Cambiar de fondo", style: TextStyle(color: Colors.white, fontSize: 28),), 
    //           Padding(
    //             padding: const EdgeInsets.only(top: 20.0),
    //             child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Container(
    //                   decoration: BoxDecoration(
    //                   shape: BoxShape.circle,
    //                   border: Border.all(
    //                   color: Colors.white,
    //                   width: 4.0,
    //                   ),
    //                 ),
    //                 child: const CircleAvatar(
    //                   radius: 30,
    //                   backgroundImage: AssetImage("assets/images/fondopantalla.jpeg"),                                 
    //                 ),
    //               ),
    //                  const SizedBox(width: 10),
    //               Container(
    //                 decoration: BoxDecoration(
    //                   shape: BoxShape.circle,
    //                   border: Border.all(
    //                   color: Colors.white,
    //                   width: 4.0,
    //                   ),
    //                 ),
    //                 child: const CircleAvatar(
    //                   radius: 30,
    //                    backgroundImage: AssetImage("assets/images/fondopantalla2.jpg"),
                    
    //                 ),
    //               ),
    //             ],
    //                       ),
    //           ),
    //         ],
    //         // create a two circleavatar with border white inside a row
        

    //       ),
       
    //     ),
    //     Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           const Text(
    //             "0",
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 100,
    //               fontWeight: FontWeight.bold,
    //             )
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Container(
    //                 decoration: BoxDecoration(
    //                   shape: BoxShape.circle,
    //                   color: Colors.white.withAlpha(30),
    //                 ),
    //                 child: IconButton(                 
    //                   onPressed: () {
    //                     setState(() {
    //                       _counter--;
    //                     });
    //                   },
    //                   icon: const Icon(Icons.remove),
    //                   iconSize: 40,
    //                   color: Colors.white,
                                  
    //                 ),
    //               ),

    //               const SizedBox(width: 10,),
    //                   Container(
    //                     width: 100,  // Ajusta el ancho del Container según tus necesidades
    //                     height: 100,
    //                     decoration: BoxDecoration(
    //                     shape: BoxShape.circle,
    //                   color: Colors.white.withAlpha(30),
    //                 ),
    //                 child: IconButton(
    //                   onPressed: () {
    //                     setState(() {
    //                       _counter++;
    //                     });
    //                   },
    //                   icon: const Text("Limpiar",style: TextStyle(color: Colors.white, fontSize: 20)),
    //                  // iconSize: 100,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //                const SizedBox(width: 10,),
    //               Container(
    //                   decoration: BoxDecoration(
    //                   shape: BoxShape.circle,
    //                   color: Colors.white.withAlpha(30),
    //                 ),
    //                 child: IconButton(
    //                   onPressed: () {
    //                     setState(() {
    //                       _counter++;
    //                     });
    //                   },
    //                   icon: const Icon(Icons.add),
    //                   iconSize: 40,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //             ],

    //           )


    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}