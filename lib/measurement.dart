// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MeasurementScreen extends StatelessWidget {
  MeasurementScreen({super.key});

  TextEditingController gender = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController marreid = TextEditingController();
  TextEditingController bMI = TextEditingController();
  TextEditingController hypertension = TextEditingController();
  TextEditingController heartDisease = TextEditingController();
  TextEditingController residenceType = TextEditingController();
  TextEditingController avgGlucoseLevel = TextEditingController();
  TextEditingController smokingStatus = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: const Text(
          "Measurement",
        ),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // Note: Same code is applied for the TextFormField as well
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height * .02),
              child: Column(
                children: [
                  TextField(
                    controller: gender,
                    decoration: InputDecoration(
                      label: const Text("Gender"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: age,
                    decoration: InputDecoration(
                      label: const Text("Age"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    controller: marreid,
                    decoration: InputDecoration(
                      label: const Text("Marreid (Yes / No)"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      label: const Text("Work Type"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    controller: bMI,
                    decoration: InputDecoration(
                      label: const Text("bMI"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    controller: heartDisease,
                    decoration: InputDecoration(
                      label: const Text("heartDisease"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    controller: hypertension,
                    decoration: InputDecoration(
                      label: const Text("hypertension"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    controller: residenceType,
                    decoration: InputDecoration(
                      label: const Text("Residence Type"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    controller: avgGlucoseLevel,
                    decoration: InputDecoration(
                      label: const Text("Avg Glucose level"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  TextField(
                    controller: smokingStatus,
                    decoration: InputDecoration(
                      label: const Text("Smoking Status"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  SizedBox(
                    width: media.width * .7,
                    height: media.height * .08,
                    child: ElevatedButton(
                      onPressed: () {
                        // Machine Learing  ..
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.green),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                      child: const Text('Submit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
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
