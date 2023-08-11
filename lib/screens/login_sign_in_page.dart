import 'package:flutter/material.dart';
import 'package:my_first_project/screens/login_page.dart';
import 'package:my_first_project/screens/sign_in.dart';

class LoginSignInPage extends StatefulWidget {
  const LoginSignInPage({super.key});

  @override
  State<LoginSignInPage> createState() => _LoginSignInPageState();
}

class _LoginSignInPageState extends State<LoginSignInPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #app bar
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          /// #image
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Transform.scale(
                scale: 0.85,
                child: Image.asset(
                  "assets/image/programmer_for_login_sign_in_page.png",
                ),
            ),
          ),

          const Text("Please sign up", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
          const Text("if you want to add an announcement!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.15,),


          /// #button for register
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()));
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
              child: const Text("Register", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            ),
          ),

          const SizedBox(height: 30,),

          /// #button for log in
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
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
    );
  }
}
