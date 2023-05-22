import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SmokeScreen extends StatefulWidget {
  const SmokeScreen({super.key});

  @override
  State<SmokeScreen> createState() => _SmokeScreenState();
}

class _SmokeScreenState extends State<SmokeScreen> {
  File? file;
  dynamic image;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xffda0000),
        elevation: 0.0,
        title: const Text(
          "Somker",
        ),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: media.height * .07),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: media.width * .05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: media.width,
                  height: media.height * .5,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: media.height * .01),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: image == null
                              ? const AssetImage('assets/background.png')
                              : FileImage(File(image)) as ImageProvider,
                          fit: BoxFit.cover),
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    "Select or take a photo",
                    style: TextStyle(
                        fontSize: media.width * .05, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: media.height * .06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () async {
                          final myFile = await ImagePicker()
                              .pickImage(source: ImageSource.camera);
                          file = File(myFile!.path);
                          image = file!.path;
                          setState(() {});
                        },
                        child: Container(
                          width: media.width * .05,
                          height: media.height * .06,
                          decoration: BoxDecoration(
                              color: const Color(0xff448aff),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.camera_alt_rounded,
                                  color: Colors.white),
                              SizedBox(
                                width: media.width * .05,
                              ),
                              Text(
                                "Camera",
                                style: TextStyle(
                                    fontSize: media.width * .05,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * .05,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () async {
                          final myFile = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);
                          file = File(myFile!.path);
                          image = file!.path;
                          setState(() {});
                        },
                        child: Container(
                          width: media.width * .05,
                          height: media.height * .06,
                          decoration: BoxDecoration(
                              color: const Color(0xff448aff),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.upload, color: Colors.white),
                              SizedBox(
                                width: media.width * .05,
                              ),
                              Text(
                                "Gallery",
                                style: TextStyle(
                                    fontSize: media.width * .05,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
