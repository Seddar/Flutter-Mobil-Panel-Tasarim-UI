import 'package:bosscubes2/screens/loginpage/login.dart';
import 'package:bosscubes2/screens/profile/profile.dart';
import 'package:bosscubes2/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class drawerBar extends StatelessWidget {
  const drawerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Seddar AYDIN'),
            accountEmail: Text('seddaraydin@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/logos/pp.png'),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                image: DecorationImage(
                    image: AssetImage('assets/logos/profile-background.png'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => profile()),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Iconsax.setting_2),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => settingsPage()),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => LoginScreen()),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
