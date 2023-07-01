// Column(
//         children: [
//           const SizedBox(height: 30,),
//            CarouselSlider(
//                                       carouselController: sliderController,
//                                       items: [
//                                         Container(
//                                           decoration: const BoxDecoration(
//                                               image: DecorationImage(
//                                                   image: AssetImage(
//                                                       'assets/images/img1.jpg'))),
//                                         ),
//                                         Container(
//                                           decoration: const BoxDecoration(
//                                               image: DecorationImage(
//                                                   image: AssetImage(
//                                                       'assets/images/img2.jpg'))),
//                                         ),
//                                         ClipRRect(
//                                           borderRadius: BorderRadius.circular(10),
//                                           child: Container(
//                                             decoration:  BoxDecoration(
//                                               borderRadius: BorderRadius.circular(10),
//                                                 image: DecorationImage(
//                                                     image: AssetImage(
//                                                         'assets/images/img3.webp'))),
//                                           ),
//                                         ),
//                                       ],
//                                       options: CarouselOptions(
//                                         height: 170,
//                                         onPageChanged: (index, reason) {
//                                           setState(() {
//                                             activeIndex = index;
//                                           });
//                                         },
//                                         aspectRatio: 16 / 9,
//                                         viewportFraction: 1,
//                                         initialPage: 0,
//                                         enableInfiniteScroll: true,
//                                         reverse: false,
//                                         autoPlay: true,
//                                         autoPlayInterval:
//                                             const Duration(seconds: 3),
//                                         autoPlayAnimationDuration:
//                                             const Duration(milliseconds: 800),
//                                         autoPlayCurve: Curves.fastOutSlowIn,
//                                         enlargeCenterPage: true,
//                                         enlargeFactor: 0.3,
//                                         scrollDirection: Axis.horizontal,
//                                       )),
//                                       const SizedBox(height: 30,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text('Team A',style: TextStyle(fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold),),
//                   const SizedBox(height: 15,),
//                   RichText(text: TextSpan(
//                     text: "Score :",style:const TextStyle(
//                       color: Color.fromARGB(255, 98, 98, 98),
//                       fontWeight: FontWeight.w600
//                     ),
//                     children: [
//                       TextSpan(text:' $teamAScore' ,
//                       style:const TextStyle(
//                       color: Colors.black,
//                     ),)
//                     ]
//                   )),
//                   const SizedBox(height: 5,),
//                   RichText(text: TextSpan(
//                     text: "Wickets :",style:const TextStyle(
//                       color: Color.fromARGB(255, 98, 98, 98),
//                       fontWeight: FontWeight.w600
//                     ),
//                     children: [
//                       TextSpan(text:' $teamAWickets' ,
//                       style:const TextStyle(
//                       color: Colors.black,
//                     ),)
//                     ]
//                   )),
//                   const SizedBox(height: 5,),
//                    RichText(text: TextSpan(
//                     text: "Overs :",style:const TextStyle(
//                       color: Color.fromARGB(255, 98, 98, 98),
//                       fontWeight: FontWeight.w600
//                     ),
//                     children: [
//                       TextSpan(text:' $teamAOvers' ,
//                       style:const TextStyle(
//                       color: Colors.black,
//                     ),)
//                     ]
//                   )),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text('Team B',style: TextStyle(fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold),),
//                   const SizedBox(height: 15,),
//                   RichText(text: TextSpan(
//                     text: "Score :",style:const TextStyle(
//                       color: Color.fromARGB(255, 98, 98, 98),
//                       fontWeight: FontWeight.w600
//                     ),
//                     children: [
//                       TextSpan(text:' $teamBScore' ,
//                       style:const TextStyle(
//                       color: Colors.black,
//                     ),)
//                     ]
//                   )),
//                   const SizedBox(height: 5,),
//                   RichText(text: TextSpan(
//                     text: "Wickets :",style:const TextStyle(
//                       color: Color.fromARGB(255, 98, 98, 98),
//                       fontWeight: FontWeight.w600
//                     ),
//                     children: [
//                       TextSpan(text:' $teamBWickets' ,
//                       style:const TextStyle(
//                       color: Colors.black,
//                     ),)
//                     ]
//                   )),
//                   const SizedBox(height: 5,),
//                    RichText(text: TextSpan(
//                     text: "Overs :",style:const TextStyle(
//                       color: Color.fromARGB(255, 98, 98, 98),
//                       fontWeight: FontWeight.w600
//                     ),
//                     children: [
//                       TextSpan(text:' $teamBOvers' ,
//                       style:const TextStyle(
//                       color: Colors.black,
//                     ),)
//                     ]
//                   )),
//                 ],
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                 onPressed: () => incrementScore(1),
//                 child:const Text('Add Run'),
//               ),
//               ElevatedButton(
//                 onPressed: () => incrementScore(2),
//                 child:const Text('Add Run'),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                 onPressed: () => incrementWickets(1),
//                 child:const Text('Wicket'),
//               ),
//               ElevatedButton(
//                 onPressed: () => incrementWickets(2),
//                 child:const Text('Wicket'),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                 onPressed: () => incrementOvers(1),
//                 child: const Text('Over'),
//               ),
//               ElevatedButton(
//                 onPressed: () => incrementOvers(2),
//                 child:const Text('Over'),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                 onPressed: () => decrementScore(1),
//                 child:const Text('Team A: Minus Run'),
//               ),
//               ElevatedButton(
//                 onPressed: () => decrementScore(2),
//                 child:const Text('Team B: Minus Run'),
//               ),
//             ],
//           ),
//         ],
//       ),