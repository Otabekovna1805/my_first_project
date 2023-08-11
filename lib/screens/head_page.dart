import 'package:flutter/material.dart';
import 'package:my_first_project/screens/home_page.dart';
import 'package:my_first_project/screens/login_sign_in_page.dart';

class HeadPage extends StatefulWidget {
  const HeadPage({super.key});

  @override
  State<HeadPage> createState() => _HeadPageState();
}

class _HeadPageState extends State<HeadPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: const Color(0xFFA084E8).withOpacity(0.9),
          body: SingleChildScrollView(
            child: Column(
              children: [
                /// #image
                Transform.rotate(
                    angle: -0.2,
                    child: Image.asset("assets/image/label.png",)),

                const Text("Welcome", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),),
                const SizedBox(height: 10,),
                const Text("You must find your work or worker", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.15,),

                /// #add_announcement
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginSignInPage()));
                  },
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.sizeOf(context).height * 0.086,
                    width: MediaQuery.sizeOf(context).width * 0.68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF845bcb)
                    ),
                    child: const Text("Add Announcement", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  ),
                ),

                const SizedBox(height: 20,),

                /// #see_all_announcement
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SeeAllAnnouncement()));
                  },
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.sizeOf(context).height * 0.086,
                    width: MediaQuery.sizeOf(context).width * 0.68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF845bcb)
                    ),
                    child: const Text("See all announcement", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
