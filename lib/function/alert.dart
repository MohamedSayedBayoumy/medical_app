import 'package:flutter/material.dart';

alertDialogMessage(BuildContext context) async => await showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        final media = MediaQuery.of(context).size;
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: AlertDialog(
            backgroundColor: Colors.white,
            title: const Text(
              "Notice",
            ),
            content:  Text(
                textAlign: TextAlign.center,
                "This application helps you predict the occurrence of a  brain stroke for the patient by offering you two options that you can enter data about the patient, or you upload a CT scan of the brain, and it shows if the patient will have a stroke or not.",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .03,
                  color: Colors.black,
                ), 
            ),
            actions: <Widget>[
              Center(
                child: SizedBox(
                  width: media.width * .3,
                  height: media.height * .06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.green),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    child: const Text("Let's Go",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
