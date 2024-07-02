import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Abu Hossain"),
              accountEmail: Text("gmkhokababu@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("images/abu.jpg",fit: BoxFit.fill,),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              SnackBar s=SnackBar(content: Text("Home"),);
              ScaffoldMessenger.of(context).showSnackBar(s);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Details"),
            onTap: () {
              SnackBar s=SnackBar(content: Text("Details"),);
              ScaffoldMessenger.of(context).showSnackBar(s);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setings"),
            onTap: () {
              SnackBar s=SnackBar(content: Text("Hello Settings"),);
              ScaffoldMessenger.of(context).showSnackBar(s);
            },
          ),
        ],
      ),
    );
  }
}
