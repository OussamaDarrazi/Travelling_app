import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelling_app/widgets/my_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plane App',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.flight_takeoff_outlined,
                    color: Colors.cyan,
                  ),
                  label: "flights"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.sort,
                    color: Colors.black,
                  ),
                  label: "receipt"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_rounded,
                    size: 50,
                    color: Colors.black,
                  ),
                  label: "search"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bubble_chart,
                    color: Colors.black,
                  ),
                  label: "chat"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.perm_identity_outlined,
                    color: Colors.amber,
                  ),
                  label: "acct"),
            ]),
        body: Stack(children: [
          const MyBackground(),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const MyHeader(), //greeting and weather info
                Container(
                    // color: Colors.indigo,
                    padding:
                        const EdgeInsets.only(left: 50, top: 10, bottom: 10),
                    alignment: Alignment.centerLeft,
                    height: 60,
                    child: const Text(
                      "Boarding Pass",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
                      textAlign: TextAlign.left,
                    )),

                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    height: 150,
                    // width: 380,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/tickets_symbol.png"))),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Prage",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Text(
                              "PRG",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "Passenger",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Text(
                              "Kishu",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/travel_symbol.png"))),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Amsterdam",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Text(
                              "AMS",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "Terminal",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Text(
                              "7A Gate 2",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ],
                    )),
                Container(
                    // color: Colors.indigo,
                    padding:
                        const EdgeInsets.only(left: 50, top: 10, bottom: 10),
                    alignment: Alignment.centerLeft,
                    height: 60,
                    child: const Text(
                      "Recent Vacation",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
                      textAlign: TextAlign.left,
                    )),
                Expanded(
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      width: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/recent_vacation_tile.png"))),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [Text("Brush Hotel", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),), Text("Prague", style: TextStyle(color: Colors.white,fontSize: 12),)],
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: const [Text("\$80", style: TextStyle(fontSize: 19, color: Colors.cyan),), Text("/day")]),
                        )
                      ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      width: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/recent_vacation_tile.png"))),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [Text("Brush Hotel", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),), Text("Prague", style: TextStyle(color: Colors.white,fontSize: 12),)],
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: const [Text("\$80", style: TextStyle(fontSize: 19, color: Colors.cyan),), Text("/day")]),
                        )
                      ]),
                    ),
                    
                    Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      width: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/recent_vacation_tile.png"))),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [Text("Brush Hotel", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),), Text("Prague", style: TextStyle(color: Colors.white,fontSize: 12),)],
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: const [Text("\$80", style: TextStyle(fontSize: 19, color: Colors.cyan),), Text("/day")]),
                        )
                      ]),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class MyHeader extends StatelessWidget {
  const MyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 190,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.redAccent,
              alignment: Alignment.bottomRight,
              child: RichText(
                textAlign: TextAlign.end,
                text: const TextSpan(
                    text: "Hello,\n",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                          text: "Kishu",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900))
                    ]),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/weather_cloud_icon.png"))),
                  height: 35,
                  width: 35,
                ),
                const Text("28°",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),
                const SizedBox(
                  width: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
