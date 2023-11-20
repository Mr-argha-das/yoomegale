import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopVideoChat extends StatefulWidget {
  const DesktopVideoChat({super.key});

  @override
  State<DesktopVideoChat> createState() => _DesktopVideoChatState();
}

class _DesktopVideoChatState extends State<DesktopVideoChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: Center(
                            child: Text(
                              "Start",
                              style: GoogleFonts.playfairDisplay(
                                  color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          style:
                              GoogleFonts.playfairDisplay(color: Colors.black),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              label: Text(
                                "Text me",
                                style: GoogleFonts.playfairDisplay(
                                    color: Colors.black),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Send",
                                style: GoogleFonts.playfairDisplay(
                                    color: Colors.black, fontSize: 18),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
