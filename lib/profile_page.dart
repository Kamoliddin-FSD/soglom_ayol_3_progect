import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soglom_ayol_3_progect/maqsad_screen.dart';
import 'package:soglom_ayol_3_progect/payment/kaloriya.dart';
import 'package:soglom_ayol_3_progect/settings_profil_page.dart';
import 'package:soglom_ayol_3_progect/tana_screen.dart';
import 'package:soglom_ayol_3_progect/payment/tolov_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kaloriya',textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700))),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18,top: 2),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(CupertinoIcons.arrow_left_circle_fill,color: Colors.black,size: 40),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 43,
              width: 43,
              child: InkWell(
                splashColor: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Kaloriya()));
                },
                  child: Image.asset('assets/logo/crown_bottom.png',fit: BoxFit.cover)
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(45),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const SettingsProfile()));
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/img/img.png'),
                radius: 70,
              ),
            ),
            const Gap(10),
            Text('Linh Nguyen',textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.w700))),
            const Gap(100),
            const Divider(indent: 25,endIndent: 25),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(builder: (context) => MaqsadScreen()));
                        },
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.blue.shade100,
                        child: Center(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue.shade100,
                              radius: 35,
                              child: const Icon(Icons.adjust),
                            ),
                            title: Text('Maqsad',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700))),
                            trailing: Icon(Icons.arrow_forward_ios,size: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(builder: (context) => MeningTanam()));
                        },
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.blue.shade100,
                        child: Center(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue.shade100,
                              radius: 35,
                              child: Image.asset('assets/logo/the_body.png',height: 40,width: 40,),
                            ),
                            title: Text('Mening tanam',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700))),
                            trailing: const Icon(Icons.arrow_forward_ios,size: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(builder: (context) => SettingsProfile()));
                        },
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.blue.shade100,
                        child: Center(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue.shade100,
                              radius: 35,
                              child: Icon(CupertinoIcons.settings),
                            ),
                            title: Text('Sozlamalar',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700))),
                            trailing: const Icon(Icons.arrow_forward_ios,size: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
