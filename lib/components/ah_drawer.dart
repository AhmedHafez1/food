import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_or_register.dart';
import 'package:food_delivery/components/ah_drawer_tile.dart';
import 'package:food_delivery/pages/settings_page.dart';

class AhDrawer extends StatelessWidget {
  const AhDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 25),
        child: Column(
          children: [
            // Logo
            Icon(
              Icons.delivery_dining_rounded,
              size: 140,
              color: Colors.lightBlue,
            ),
            Divider(
              thickness: 2,
              color: Theme.of(context).colorScheme.secondary,
            ),
            SizedBox(height: 15),
            AhDrawerTile(
              icon: Icons.home,
              title: 'H O M E',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            AhDrawerTile(
              icon: Icons.settings,
              title: 'S E T T I N G S',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SettingsPage()),
                );
              },
            ),
            Spacer(),
            AhDrawerTile(
              icon: Icons.logout,
              title: 'L O G O U T',
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => LoginOrRegister()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
