import 'package:flutter/material.dart';
import 'package:my_first_project/core/service_locator.dart';

class MyResume extends StatefulWidget {
  const MyResume({super.key});

  @override
  State<MyResume> createState() => _MyResumeState();
}

class _MyResumeState extends State<MyResume> {
  bool _isVisible = false;
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            /// #text_resume
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  const Text(
                    "Resume: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, fontFamily: "Saira"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 153),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                            setState(() {});
                          });
                        },
                        icon: Transform.rotate(
                            angle: _isVisible ? 4.7 : 7.9,
                            child: const Icon(Icons.arrow_back_ios_new))),
                  ),
                ],
              ),
            ),

            /// #fullName
            Row(
              children: [
                Image.asset(
                  "assets/image/name.png",
                  height: 30,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 0),
                    child: Text(
                      "Full Name: Fotima Rustamova",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w900, fontFamily: "Exo"),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            /// #age
            Row(
              children: [
                Image.asset(
                  "assets/image/age.png",
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Age: 14 y.o",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Exo"),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            /// #technological
            Row(
              children: [
                Image.asset(
                  "assets/image/technological.png",
                  height: 30,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 0),
                    child: Text(
                      "Technological: Dart Flutter",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Exo"),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),

            if (_isVisible)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 10,
                  ),

                  /// #contact
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/contact.png",
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "For contact: @space_1805",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 13,
                  ),

                  /// #phoneNumber
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/phone_number.png",
                        height: 30,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            "Phone Number: +998 90 959 93 19",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  /// #area
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/area.png",
                        height: 30,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            "Area: Tashkent",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  /// #salary
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/salary.png",
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 0),
                        child: Text(
                          "Salary: 300\$",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Exo"),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  /// #timeToApply
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/time_to_apply.png",
                        height: 30,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            "Time  to apple: 24/7",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Exo"),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  /// #addition
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/addition.png",
                        height: 30,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            "Addition: I'm learning English",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Exo"),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  /// #purpose
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/purpose.png",
                        height: 30,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            "Purpose: Gaining experience in large projects",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Exo"),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _isSaved = !_isSaved;
                              setState(() {});
                            });
                          },
                          icon: Image.asset(
                            _isSaved ?
                            "assets/icons/saved_fill.png" : "assets/icons/saved.png",
                            height: 25,
                            // ignore: unrelated_type_equality_checks
                            color: mode == ThemeMode.dark ? Colors.black : Colors.black,
                          ),
                      ),
                      Text(
                        "${DateTime.now().day < 10 ? 0 : null}${DateTime.now().day.toString()}.0${DateTime.now().month.toString()}.${DateTime.now().year.toString()}",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              )
          ]),
        ),
      ),
    );
  }
}
