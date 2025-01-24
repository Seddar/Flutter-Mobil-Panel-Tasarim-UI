import 'package:bosscubes2/screens/homepage/assigned_requests.dart';
import 'package:bosscubes2/screens/homepage/open_requests.dart';
import 'package:bosscubes2/screens/homepage/overdue_claims.dart';
import 'package:bosscubes2/screens/homepage/requests_awaiting_response.dart';
import 'package:bosscubes2/screens/homepage/unassigned_requests.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initial Selected Value
  String dropdownvalue = 'Açık Talepler';

  // List of items in our dropdown menu
  var items = [
    'Açık Talepler',
    'Atanmış Talepler',
    'Atanmamış Talepler',
    'Yanıt Bekleyen Talepler',
    'Süresi Geçmiş Talepler',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: const Row(
              children: [
                Icon(
                  Icons.list,
                  size: 16,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    'Talep Türünü Seçiniz',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
                switch (value) {
                  case "Açık Talepler":
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => openRequests()),
                    );
                    break;
                  case "Atanmış Talepler":
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => assignedRequests()),
                    );
                    break;
                  case "Atanmamış Talepler":
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => unassignedRequests()),
                    );
                    break;
                  case "Yanıt Bekleyen Talepler":
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => requestsAwaiting()),
                    );
                    break;
                  case "Süresi Geçmiş Talepler":
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => overdueClaims()),
                    );
                    break;
                }
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 370,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Colors.black26,
                ),
                color: Colors.grey,
              ),
              elevation: 2,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              iconSize: 14,
              iconEnabledColor: Colors.white,
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey,
              ),
              offset: const Offset(0, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),
      ),
    );
  }
}
