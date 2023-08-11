import 'package:flutter/material.dart';
import 'package:my_first_project/core/service_locator.dart';

class MyVacancy extends StatefulWidget {
  const MyVacancy({super.key});

  @override
  State<MyVacancy> createState() => _MyVacancyState();
}

class _MyVacancyState extends State<MyVacancy> {
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
            /// #vacancy
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  const Text(
                    "Vacancy: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 153),
                    child: IconButton(onPressed: (){
                      setState(() {
                        _isVisible = !_isVisible;
                        setState(() {});
                      });
                    }, icon: Transform.rotate(angle: _isVisible ? 4.7 : 7.9,
                        child: const Icon(Icons.arrow_back_ios_new))
                    ),
                  ),
                ],
              ),
            ),

            /// #companyName
            Row(
              children: [
                Image.asset(
                  "assets/image/company.png",
                  height: 30,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 0),
                    child: Text(
                      "Company name: PDP Academy",
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
                      "Technological: Dart, Flutter, Figma",
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

            /// #contact
            Row(
              children: [
                Image.asset(
                  "assets/image/contact.png",
                  height: 30,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "For contact: @PDPAcademyRegBot",
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
              height: 13,
            ),



            if (_isVisible)
              Column(
                children: [
                  /// #chargeFullName
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/charge.png",
                        height: 30,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Charge Full Name: PDP Support",
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

                  /// #workTime
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/work_time.png",
                        height: 30,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            "Work Time: 9.30 a.m 18.30 p.m",
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
                          "Salary: 500\$",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
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
                            "Addition: Must have teaching skills and be courteous",
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
                            "Purpose: Hiring a quality teacher for students",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
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
