import 'package:doctor/smoke_screen.dart';
import 'package:flutter/material.dart';

import 'function/alert.dart';
import 'measurement.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      alertDialogMessage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
          padding: EdgeInsets.only(top: media.height * .06),
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    'In Here you will get all Digtial services',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Image.asset("assets/medical-team.png"),
                  Padding(
                    padding: EdgeInsets.only(
                      left: media.width * .04,
                      right: media.width * .04,
                      top: media.width * .13,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: media.width * .7,
                          height: media.height * .08,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MeasurementScreen(),
                                  ));
                            },
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                            child: const Text(
                                'Measurement of blood pressure and sugar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.height * .03,
                  ),
                  SizedBox(
                    width: media.width * .7,
                    height: media.height * .08,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SmokeScreen(),
                            ));
                      },
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              const Color(0xffda0000)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                      child: const Text('Do you smoke ! ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
