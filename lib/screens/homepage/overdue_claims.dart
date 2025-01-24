import 'package:bosscubes2/screens/requests/requests.dart';
import 'package:bosscubes2/utils/constants/sizes.dart';
import 'package:bosscubes2/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class overdueClaims extends StatelessWidget {
  const overdueClaims({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F9),
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 600,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFF8F8F9)),
            child: Stack(
              children: [
                const Positioned(
                  left: 30,
                  top: 0,
                  child: SizedBox(
                    width: 354,
                    child: Text(
                      'Süresi Geçmiş Talepler',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 100,
                  top: 95,
                  child: Text(
                    'Takip Kodu Eklenecekler',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                const Positioned(
                  left: 100,
                  top: 117,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'Drinks',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 100,
                  top: 185,
                  child: SizedBox(
                    width: 211,
                    child: Text(
                      'Geliver Takip Kodları Hk.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 100,
                  top: 207,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'Drinks',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 100,
                  top: 270,
                  child: Text(
                    'Ariş API Hata',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                const Positioned(
                  left: 100,
                  top: 293,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'Ariş',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 330,
                  top: 95,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      '15min ago',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                      margin: EdgeInsets.only(top: 117, left: 350),
                      child: Icon(
                        Iconsax.sidebar_right,
                      )),
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                child: ListTile(
                                  contentPadding:
                                      EdgeInsets.only(top: 0, left: 25),
                                  title: Text('Ticket No: 2453452256/4652'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text('Konu: Takip Kodu Eklenecekler'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text('Firma Adı: Drinks'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text('Atanan: Seddar Aydın'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text(
                                      'Gönderen: kadir.ingin@evrimbilgisayar.com'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text('Gönderici Adı: Kadir İngin'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text('Öncelik: Normal'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text(
                                      'Oluşturulma Zamanı: 30-05-2024 / 09:49:24'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text('Kapanış Zamanı: '),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text('Harcanan Süre: '),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  title: Text('Durum: Açık'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: TSizes.spaceBtwInputFields,
                              ),
                              SizedBox(
                                  width: 150,
                                  height: 54,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) => Requests()),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        TTexts.talepButton,
                                        style: TextStyle(color: Colors.white),
                                      ))),
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.only(left: 25),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                ),
                const Positioned(
                  left: 330,
                  top: 180,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      '3min ago',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(top: 200, left: 350),
                        child: Icon(
                          Iconsax.sidebar_right,
                        )),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Expanded(
                                  child: ListTile(
                                    contentPadding:
                                        EdgeInsets.only(top: 0, left: 25),
                                    title: Text('Ticket No: 2453452256/4652'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title:
                                        Text('Konu: Takip Kodu Eklenecekler'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Firma Adı: Drinks'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Atanan: Seddar Aydın'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text(
                                        'Gönderen: kadir.ingin@evrimbilgisayar.com'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Gönderici Adı: Kadir İngin'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Öncelik: Normal'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text(
                                        'Oluşturulma Zamanı: 30-05-2024 / 09:49:24'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Kapanış Zamanı: '),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Harcanan Süre: '),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Durum: Açık'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwInputFields,
                                ),
                                SizedBox(
                                    width: 150,
                                    height: 54,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  Requests()),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          TTexts.talepButton,
                                          style: TextStyle(color: Colors.white),
                                        ))),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                  ),
                                ),
                              ],
                            );
                          });
                    }),
                const Positioned(
                  left: 330,
                  top: 265,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      '30secs ago',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(top: 287, left: 350),
                        child: Icon(
                          Iconsax.sidebar_right,
                        )),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Expanded(
                                  child: ListTile(
                                    contentPadding:
                                        EdgeInsets.only(top: 0, left: 25),
                                    title: Text('Ticket No: 2453452256/4652'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title:
                                        Text('Konu: Takip Kodu Eklenecekler'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Firma Adı: Drinks'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Atanan: Seddar Aydın'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text(
                                        'Gönderen: kadir.ingin@evrimbilgisayar.com'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Gönderici Adı: Kadir İngin'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Öncelik: Normal'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text(
                                        'Oluşturulma Zamanı: 30-05-2024 / 09:49:24'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Kapanış Zamanı: '),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Harcanan Süre: '),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                    title: Text('Durum: Açık'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwInputFields,
                                ),
                                SizedBox(
                                    width: 150,
                                    height: 54,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  Requests()),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          TTexts.talepButton,
                                          style: TextStyle(color: Colors.white),
                                        ))),
                                Expanded(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(left: 25),
                                  ),
                                ),
                              ],
                            );
                          });
                    }),
                Positioned(
                  left: 30,
                  top: 85,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/logos/task.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 173,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logos/task.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 260,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logos/task.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 37,
                  top: 155,
                  child: Opacity(
                    opacity: 0.50,
                    child: Container(
                      width: 351,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 37,
                  top: 240,
                  child: Opacity(
                    opacity: 0.50,
                    child: Container(
                      width: 351,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 37,
                  top: 330,
                  child: Opacity(
                    opacity: 0.50,
                    child: Container(
                      width: 351,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
