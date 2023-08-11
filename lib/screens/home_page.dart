import 'package:flutter/material.dart';
import 'package:my_first_project/core/service_locator.dart';
import 'package:my_first_project/domain/model/resume/add_resume.dart';
import 'package:my_first_project/screens/add_announcement.dart';
import 'package:my_first_project/screens/edit_profile.dart';
import 'package:my_first_project/screens/login_sign_in_page.dart';
import 'package:my_first_project/screens/saved_announcement.dart';
import 'package:my_first_project/view/my_resume.dart';
import 'package:my_first_project/view/my_vacancy.dart';

class SeeAllAnnouncement extends StatefulWidget {
  const SeeAllAnnouncement({Key? key}) : super(key: key);

  @override
  State<SeeAllAnnouncement> createState() => _SeeAllAnnouncementState();
}

class _SeeAllAnnouncementState extends State<SeeAllAnnouncement> {
  /// state manage
  List<Resume> resumes = [];

  @override
  void initState() {
    super.initState();
    getAllResume();
  }

  void getAllResume() {
    resumes = repositoryResume.readResume();
    setState(() {});
  }

  void goResumePage() async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const LoginSignInPage()));
  }

  void changeTheme() async {
    if (mode.value == ThemeMode.light) {
      await themeRepository.setMode(ThemeMode.dark);
      mode.value = ThemeMode.dark;
    } else {
      await themeRepository.setMode(ThemeMode.light);
      mode.value = ThemeMode.light;
    }
  }

  /// ui => build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Announcement",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("🪐"),
              accountEmail: const Text(
                "fotimarustamova@gmail.com",
                style: TextStyle(fontSize: 18),
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFA084E8),
              ),
              currentAccountPicture: ClipRect(
                  child: Image.asset("assets/image/account_image.png")),
              currentAccountPictureSize: const Size.fromRadius(30),
            ),

            /// #edit_profile
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const EditPage()));
              },
              title: const Text(
                "Edit profile",
                style: TextStyle(fontSize: 18),
              ),
              leading: Image.asset("assets/image/edit_profile.png", height: 25,),
            ),

            /// #add_announcement
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddAnnouncement()));
              },
              title: const Text(
                "Add announcement",
                style: TextStyle(fontSize: 18),
              ),
              leading:Image.asset("assets/image/add.png", height: 25,),
            ),

            /// #saved_annoucemnt
            ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SavedAnnouncementPage()));
                },
                title: const Text(
                  "Saved announcement",
                  style: TextStyle(fontSize: 18),
                ),
                leading: Image.asset("assets/image/saved.png", height: 25,)

            ),

            /// #mode
            ListTile(
              onTap: changeTheme,
              title: const Text(
                "Mode",
                style: TextStyle(fontSize: 18),
              ),
              leading: ValueListenableBuilder<ThemeMode>(
                    valueListenable: mode,
                    builder: (_, mode, child) {
                      return Image.asset(mode != ThemeMode.light
                          ? "assets/image/sun.png"
                          : "assets/image/moon.png", height: 25,);
                    },
                  ),
            ),


          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            /// #resume
            MyResume(),

            SizedBox(
              height: 20,
            ),

            /// #vacancy
            MyVacancy()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: goResumePage,
        child: const Icon(Icons.add),
      ),
    );
  }
}



