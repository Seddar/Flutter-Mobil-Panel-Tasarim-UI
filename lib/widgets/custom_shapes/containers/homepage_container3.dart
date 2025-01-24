import 'package:bosscubes2/screens/homepage/overdue_claims.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepageContainer3 extends StatelessWidget {
  const homepageContainer3({super.key});

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
                  builder: ((context) => overdueClaims()),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 0, right: 10, left: 15),
              width: 185,
              height: 100,
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[900],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text("Süresi Geçmiş Talepler (13)",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                          color: Colors.white, fontSize: 15))),
            ),
          ),
          //InkWell(
          // onTap: () {
          // Navigator.push(
          // context,
          // MaterialPageRoute(
          //  builder: ((context) => (LoginScreen())),
          // ),
          // );
          // },
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 0, right: 0, left: 5),
            width: 185,
            height: 100,
            padding: EdgeInsets.all(9),
            decoration: BoxDecoration(
                color: Colors.teal[400],
                borderRadius: BorderRadius.circular(20)),
            child: Center(
                child: Text("Başarı Yüzdesi: %70.35",
                    style: GoogleFonts.quicksand(
                        color: Colors.white, fontSize: 15))),
          ),
          //),
        ],
      ),
    );
  }
}
