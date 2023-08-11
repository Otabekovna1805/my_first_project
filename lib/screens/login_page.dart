import 'package:flutter/material.dart';
import 'package:my_first_project/screens/add_announcement.dart';
import 'package:my_first_project/screens/add_resume_page.dart';
import 'package:my_first_project/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #app bar
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text("Sign In", style: TextStyle(fontSize: 22),),
        centerTitle: true,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      // backgroundColor: const Color(0xFFA084E8).withOpacity(0.9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// #image
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Image.asset("assets/image/log_in_page.png", height: 280,),
            ),

            const SizedBox(height: 15,),
            const Text("Enter your login detail and password!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),

            /// #textFields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  /// #textField for email
                  TextField(
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: const TextStyle(color: Colors.black54, fontSize: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Color(0xFFFF52A2))
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),

                  /// #textField for password
                  TextField(
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),
                    obscureText: _passwordvisible,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.black54, fontSize: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey)
                      ),
                      suffixIcon: IconButton(
                        padding: const EdgeInsets.only(bottom: 11),
                        splashRadius: 1,
                        icon: Icon(!_passwordvisible ? Icons.visibility : Icons.visibility_off, color: Colors.grey,),
                        onPressed: () {
                          _passwordvisible = !_passwordvisible;
                          setState(() {

                          });
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Color(0xFFFF52A2))
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// #button
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddAnnouncement()));
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
                child: const Text("Log In", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
