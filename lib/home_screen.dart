import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CricketScoreboardPage extends StatefulWidget {
  @override
  _CricketScoreboardPageState createState() => _CricketScoreboardPageState();
}

class _CricketScoreboardPageState extends State<CricketScoreboardPage> {
  int teamAScore = 0;
  int teamAWickets = 0;
  int teamAOvers = 0;

  int teamBScore = 0;
  int teamBWickets = 0;
  int teamBOvers = 0;

  void incrementScore(int team) {
    setState(() {
      if (team == 1) {
        teamAScore++;
      } else {
        teamBScore++;
      }
    });
  }

  void six(int team) {
    setState(() {
      if (team == 1) {
        teamAScore=teamAScore+6;
      } else {
        teamBScore=teamBScore+6;
      }
    });
  }

   void four(int team) {
    setState(() {
      if (team == 1) {
        teamAScore=teamAScore+4;
      } else {
        teamBScore=teamBScore+4;
      }
    });
  }

  void decrementScore(int team) {
    setState(() {
      if (team == 1) {
        teamAScore--;
      } else {
        teamBScore--;
      }
    });
  }

  void incrementWickets(int team) {
    setState(() {
      if (team == 1) {
        teamAWickets++;
      } else {
        teamBWickets++;
      }
    });
  }

  void incrementOvers(int team) {
    setState(() {
      if (team == 1) {
        teamAOvers++;
      } else {
        teamBOvers++;
      }
    });
  }

  CarouselController sliderController = CarouselController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:const Text('Cricket Scoreboard',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(children:[ 
           Image(image: AssetImage("assets/images/img4.jpg"),
           color: Colors.black.withOpacity(0.5),
          colorBlendMode: BlendMode.dstATop,
          ),
          //
          Column(
        children: [
          const SizedBox(height: 30,),
           CarouselSlider(
                                      carouselController: sliderController,
                                      items: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/img1.jpg'))),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/img2.jpg'))),
                                        ),
                                        Container(
                                          decoration:const  BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/img3.webp'))),
                                        ),
                                      ],
                                      options: CarouselOptions(
                                        height: 170,
                                        onPageChanged: (index, reason) {
                                          setState(() {
                                            activeIndex = index;
                                          });
                                        },
                                        aspectRatio: 16 / 9,
                                        viewportFraction: 1,
                                        initialPage: 0,
                                        enableInfiniteScroll: true,
                                        reverse: false,
                                        autoPlay: true,
                                        autoPlayInterval:
                                            const Duration(seconds: 3),
                                        autoPlayAnimationDuration:
                                            const Duration(milliseconds: 800),
                                        autoPlayCurve: Curves.fastOutSlowIn,
                                        enlargeCenterPage: true,
                                        enlargeFactor: 0.3,
                                        scrollDirection: Axis.horizontal,
                                      )),
                                      const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Team A',style: TextStyle(
                    fontSize: 23,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                     const Text("Score :",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                    const SizedBox(width: 5,),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("$teamAScore",
                         style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                        ),
                      ),
                    ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                     const Text("Wickets :",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                    const SizedBox(width: 10,),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("$teamAWickets",
                         style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                        ),
                      ),
                    ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                     const Text("Overs :",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                    const SizedBox(width: 5,),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("$teamAOvers",
                         style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                        ),
                      ),
                    ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Team B',style: TextStyle(
                    fontSize: 23,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                     const Text("Score :",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                    const SizedBox(width: 5,),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("$teamBScore",
                         style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                        ),
                      ),
                    ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                     const Text("Wickets :",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                    const SizedBox(width: 5,),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("$teamBWickets",
                         style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                        ),
                      ),
                    ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                     const Text("Overs :",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                    const SizedBox(width: 5,),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("$teamBOvers",
                         style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                        ),
                      ),
                    ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => incrementScore(1),
                child:const Text('Add Run'),
              ),
              ElevatedButton(
                onPressed: () => incrementScore(2),
                child:const Text('Add Run'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => four(1),
                    child:const Text('4'),
                  ),
                  const SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: () => six(1),
                    child:const Text('6'),
                  ),
                ],
              ),
              Row(
                children: [
                   ElevatedButton(
                    onPressed: () => four(2),
                    child:const Text('4'),
                  ),
                  const SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: () => six(2),
                    child:const Text('6'),
                  ),

                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => incrementWickets(1),
                child:const Text('Wicket'),
              ),
              ElevatedButton(
                onPressed: () => incrementWickets(2),
                child:const Text('Wicket'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => incrementOvers(1),
                child: const Text('Over'),
              ),
              ElevatedButton(
                onPressed: () => incrementOvers(2),
                child:const Text('Over'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => decrementScore(1),
                child:const Text('Team A: Minus Run'),
              ),
              ElevatedButton(
                onPressed: () => decrementScore(2),
                child:const Text('Team B: Minus Run'),
              ),
            ],
          ),
        ],
      ),
          ]
        )
        ),
    );
  }
}