import 'package:bosscubes2/screens/homepage/assigned_requests.dart';
import 'package:bosscubes2/screens/homepage/open_requests.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepageContainer1 extends StatelessWidget {
  const homepageContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 15, bottom: 0, right: 10, left: 15),
              width: 185,
              height: 100,
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text("Açık Talepler (12)",
                      style: GoogleFonts.quicksand(
                          color: Colors.white, fontSize: 15))),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => openRequests()),
                ),
              );
            },
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 15, bottom: 0, right: 0, left: 5),
              width: 185,
              height: 100,
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Colors.orange[600],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text("Atanmış Talepler (6)",
                      style: GoogleFonts.quicksand(
                          color: Colors.white, fontSize: 15))),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => (assignedRequests())),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
