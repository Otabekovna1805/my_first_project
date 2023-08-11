import 'package:flutter/material.dart';
import 'package:my_first_project/core/service_locator.dart';
import 'package:my_first_project/domain/model/vacancy/vacancy.dart';
import 'package:my_first_project/screens/home_page.dart';

class AddVacancyPage extends StatefulWidget {
  const AddVacancyPage({super.key});

  @override
  State<AddVacancyPage> createState() => _AddVacancyPageState();
}

class _AddVacancyPageState extends State<AddVacancyPage> {
  final TextEditingController chargeFullNameController = TextEditingController();
  final TextEditingController technologicalController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final TextEditingController timeToApplyController = TextEditingController();
  final TextEditingController workTimeController = TextEditingController();
  final TextEditingController additionController = TextEditingController();
  final TextEditingController purposeController = TextEditingController();

  void createResume() async {
    String chargeFullName = chargeFullNameController.value.text.trim();
    String technological = technologicalController.value.text.trim();
    String contact = contactController.value.text.trim();
    String company = companyController.value.text.trim();
    String area = areaController.value.text.trim();
    String salary = salaryController.value.text.trim();
    String timeToApply = timeToApplyController.value.text.trim();
    String workTime = workTimeController.value.text.trim();
    String addition = additionController.value.text.trim();
    String purpose = purposeController.value.text.trim();

    if(technological.isEmpty || contact.isEmpty || company.isEmpty || timeToApply.isEmpty || purpose.isEmpty || addition.isEmpty) {
      return;
    }

    final id = repositoryResume.readResume().length + 1;
    final vacancy = Vacancy(id: id, company: company, technological: technological, contact: contact, chargeFullName: chargeFullName, timeToApply: timeToApply, workTime: workTime, area: area, salary: salary, addition: addition, purpose: purpose);

    final result = await repositoryVacancy.storeVacancy(vacancy);
    if(result) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SeeAllAnnouncement()));
    } else {
      /// error msg
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Some thing error, try again later")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Vacancy"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Image.asset("assets/image/add_vacancy.png", height: 280,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  CustomTextField(text: "Companiya nomini kiriting: ", controller: companyController),
                  const SizedBox(height: 10,),
                  CustomTextField(text: "Qaysi texnologiyalardan foydalanasiz: ", controller: technologicalController),
                  const SizedBox(height: 10,),
                  CustomTextField(text: "Aloqa uchun: ", controller: contactController),
                  const SizedBox(height: 10,),
                  CustomTextField(text: "Ma'sul inson ism sharifini kiriting: ", controller: chargeFullNameController),
                  const SizedBox(height: 10,),
                  CustomTextField(text: "Murojaat vaqti: ", controller: timeToApplyController),
                  const SizedBox(height: 10,),
                  CustomTextField(text: "Hududingizni kiriting: ", controller: areaController),
                  const SizedBox(height: 10,),
                  CustomTextField(text: "Qancha maoshga to'laysiz: ", controller: salaryController),
                  const SizedBox(height: 10,),
                  CustomTextField(text: "Qo'shimcha: ", controller: additionController),
                  const SizedBox(height: 10,),
                  CustomTextField(text: "Maqsadingiz: ", controller: purposeController),

                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: createResume,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.sizeOf(context).height * 0.086,
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF845bcb)
                      ),
                      child: const Text("Save vacancy", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const CustomTextField({super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 2)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFe681e5), width: 2),
        ),
      ),
    );
  }
}
