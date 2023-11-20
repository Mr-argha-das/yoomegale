import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneMainScreen extends StatefulWidget {
  const PhoneMainScreen({super.key});

  @override
  State<PhoneMainScreen> createState() => _PhoneMainScreenState();
}

class _PhoneMainScreenState extends State<PhoneMainScreen> {
  bool next = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: next == false
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome to Yoomegale",
                  style: GoogleFonts.playfairDisplay(
                      color: Colors.black, fontSize: 30),
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    style: GoogleFonts.playfairDisplay(color: Colors.black),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        label: Text(
                          "What's Your Name dude ?",
                          style:
                              GoogleFonts.playfairDisplay(color: Colors.black),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      next = true;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 123, 221),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "So Lets Go Dude!",
                        style: GoogleFonts.playfairDisplay(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : const ChoseButton(),
    ));
  }
}

class ChoseButton extends StatefulWidget {
  const ChoseButton({super.key});

  @override
  State<ChoseButton> createState() => _ChoseButtonState();
}

class _ChoseButtonState extends State<ChoseButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "What Do You Chose?",
          style: GoogleFonts.playfairDisplay(color: Colors.black, fontSize: 30),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Beamer.of(context).beamToNamed('/chat');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 123, 221),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Chat",
                      style: GoogleFonts.playfairDisplay(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Beamer.of(context).beamToNamed('/videochat');
                },
                child: Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 123, 221),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Video Chat",
                      style: GoogleFonts.playfairDisplay(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
