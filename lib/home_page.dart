import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:soglom_ayol_3_progect/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectedDay = DateTime.now();
  var _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListTile(
                title: Text('Salom',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900))),
                subtitle: Text('Kamoliddin',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900))),
                trailing: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orangeAccent
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const ProfilePage()));
                    },
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/logo/buttom_logo.png',
                      height: 5,
                      width: 5,
                    ),
                  ),
                )
              ),
              const SizedBox(height: 10),
              SalomonBottomBar(
                currentIndex: _currentIndex,
                onTap: (i) => setState(() => _currentIndex = i),
                items: [
                  SalomonBottomBarItem(
                    icon: const Text("1",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                    title: const Text("Mart",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                  ),
                  SalomonBottomBarItem(
                    icon: const Text('2',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                    title: const Text("Mart",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                  ),
                  SalomonBottomBarItem(
                    icon: const Text('3',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                    title: const Text("Mart",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                  ),
                  SalomonBottomBarItem(
                    icon: const Text('Bugun, 4',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                    title: const Text("Mart",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                  ),
                  SalomonBottomBarItem(
                    icon: const Text('5',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                    title: const Text("Mart",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                  ),
                  SalomonBottomBarItem(
                    icon: const Text('6',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                    title: const Text("Mart",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                  ),
                  SalomonBottomBarItem(
                    icon: const Text('7',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                    title: const Text("Mart",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(child: Column(
                children: [
                  Text('1 883 Kcal',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 40,fontWeight: FontWeight.w900))),
                  Text('Umumiy kilokaloriya',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,color: Colors.black54))),
                  Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 110,
                          child: Column(
                            children: [
                              Text('7580 m',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900))),
                              Text('Masofa',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 15,color: Colors.black54))),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 110,
                          child: Column(
                            children: [
                              Text('9832',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900))),
                              Text('Qadamlar',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 15,color: Colors.black54))),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 110,
                          child: Column(
                            children: [
                              Text('75.1',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900))),
                              Text('Yurak urushi',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 15,color: Colors.black54))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1,color: Colors.black12)
                            ),
                            child: Center(
                              child: ListTile(
                                leading: const CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage('assets/logo/img.png'),
                                ),
                                title: Text('Piyoda',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900))),
                                subtitle: Text('24 minut',style: GoogleFonts.inder()),
                                trailing: Text('5.56 km',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black))),
                              ),
                            )
                        ),
                        const SizedBox(height: 15),
                        Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1,color: Colors.black12)
                            ),
                            child: Center(
                              child: ListTile(
                                leading: const CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage('assets/logo/user.png'),
                                ),
                                title: Text('Piyoda',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900))),
                                subtitle: Text('24 minut',style: GoogleFonts.inder()),
                                trailing: Text('4.22 km',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black))),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Text('Maqolalar',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black))),
                    trailing: TextButton(
                      onPressed: () {},
                        child: Text("Hammasini ko'rish",style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 15)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 100,
                                  width: 110,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network('https://ss.sport-express.ru/userfiles/materials/196/1962380/full.jpg',fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                        child: Text('Yoga odamlarga qanday beradi?',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black))),
                                      width: 200,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 100,
                                  width: 110,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network('https://akm-img-a-in.tosshub.com/indiatoday/sunsetyoga-2_647_062115121022.jpg?size=690:388',fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text('Yoga odamlarga qanday beradi?',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black))),
                                      width: 200,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 100,
                                  width: 110,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network('https://images.healthshots.com/healthshots/en/uploads/2022/05/11184715/Yoga-for-weight-loss.jpg',fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text('Yoga odamlarga qanday beradi?',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black))),
                                      width: 200,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Text('Retseptlar',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black))),
                    trailing: TextButton(
                        onPressed: () {},
                        child: Text("Hammasini ko'rish",style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 15)))),
                  ),
                  ListTile(
                    leading: Text('Mashqlar',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black))),
                    trailing: TextButton(
                        onPressed: () {},
                        child: Text("Hammasini ko'rish",style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 15)))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black12
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                    child: Image.network('https://hips.hearstapps.com/hmg-prod/images/squat-jump-squat-178-1653334247.jpg?crop=0.859xw:0.646xh;0.0481xw,0.342xh&resize=1200:*',fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black12,
                                  ),
                                  child: Center(
                                    child: Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Column(
                                          children: [
                                            Text('Squat harakati mashqi',style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 24,fontWeight: FontWeight.w900,color: Colors.white))),
                                            Text("6 minut | O'rta daraja",style: GoogleFonts.inder(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.white))),
                                          ],
                                        ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
