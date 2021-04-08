import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Size preferredSize;

  CustomAppBar({Key key, this.title})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: -5,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Hoxa',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'San Francisco',
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.menu,
        ),
        onPressed: () => {
          print('Menu'),
        },
      ),
      actions: [
        SizedBox(
          width: 200,
          
          child: TextField(
            decoration: new InputDecoration(
              icon: new Icon(
                Icons.search,
              ),
              labelText: 'Search your domain',
              labelStyle: TextStyle(
                  fontFamily: 'Raleway',
                fontSize: 15,
              ),
              contentPadding: EdgeInsets.fromLTRB(-10, 0, 0, 0),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            print('Profile');
          },
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
