import 'package:bosscubes2/screens/homepage/requests_awaiting_response.dart';
import 'package:bosscubes2/screens/homepage/unassigned_requests.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepageContainer2 extends StatelessWidget {
  const homepageContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => unassignedRequests()),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 0, right: 10, left: 15),
              width: 185,
              height: 100,
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Colors.green[600],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text("Atanmamış Talepler(37)",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                          color: Colors.white, fontSize: 15))),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => (requestsAwaiting())),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 0, right: 0, left: 5),
              width: 185,
              height: 100,
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Colors.pink[600],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text("Yanıt Bekleyen Talepler(28)",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                          color: Colors.white, fontSize: 15))),
            ),
          ),
        ],
      ),
    );
  }
}
