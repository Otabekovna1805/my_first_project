import 'package:flutter/material.dart';
import 'package:my_first_project/screens/add_resume_page.dart';
import 'package:my_first_project/screens/add_vakancy_page.dart';

class AddAnnouncement extends StatefulWidget {
  const AddAnnouncement({super.key});

  @override
  State<AddAnnouncement> createState() => _AddAnnouncementState();
}

class _AddAnnouncementState extends State<AddAnnouncement> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #app bar
      appBar: AppBar(

      ),
      body: Column(
        children: [
          /// #image
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Transform.scale(
              scale: 0.85,
              child: Image.asset(
                "assets/image/add_vacancy_resume.png",
              ),
            ),
          ),

          const Text("Please choose your announcement!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.15,),


          /// #button for register
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddResumePage()));
            },
            borderRadius: BorderRadius.circular(15),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.sizeOf(context).height * 0.086,
              width: MediaQuery.sizeOf(context).width * 0.77,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF845bcb)
              ),
              child: const Text("Add resume", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            ),
          ),

          const SizedBox(height: 30,),

          /// #button for log in
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddVacancyPage()));
            },
            borderRadius: BorderRadius.circular(15),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.sizeOf(context).height * 0.086,
              width: MediaQuery.sizeOf(context).width * 0.77,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF845bcb)
              ),
              child: const Text("Add vacancy", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            ),
          ),
        ],
      ),
    );
  }
}
