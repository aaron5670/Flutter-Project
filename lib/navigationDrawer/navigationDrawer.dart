import 'package:flutter/material.dart';
import 'createDrawerBodyItem.dart';
import 'createDrawerHeader.dart';
import '../routes/pageRoute.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.home),
          ),
          createDrawerBodyItem(
            icon: Icons.account_circle,
            text: 'Product',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.product),
          ),
          // createDrawerBodyItem(
          //   icon: Icons.event_note,
          //   text: 'Events',
          //   onTap: () =>
          //       Navigator.pushReplacementNamed(context, pageRoutes.home),
          // ),
          Divider(),
          // createDrawerBodyItem(
          //   icon: Icons.notifications_active,
          //   text: 'Notifications',
          //   onTap: () =>
          //       Navigator.pushReplacementNamed(context, pageRoutes.product),
          // ),
          // createDrawerBodyItem(
          //   icon: Icons.contact_phone,
          //   text: 'Contact Info',
          //   onTap: () =>
          //       Navigator.pushReplacementNamed(context, pageRoutes.home),
          // ),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}