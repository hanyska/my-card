import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget createIconWIthText(BuildContext context, String text, dynamic icon) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 25.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.circular(5)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon is IconData
            ? Icon(
                icon,
                color: Theme.of(context).accentColor,
              )
            : ImageIcon(
                AssetImage(icon),
                color: Theme.of(context).accentColor,
                size: 24,
              ),
          SizedBox(width: 10.0,),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).accentColor.withAlpha(60),
                      blurRadius: 50.0,
                      spreadRadius: 20.0,
                      offset: Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ]
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/image.jpg'),
                radius: width / 4,
              ),
            ),
            Text(
              'Anna Janusz',
              style: TextStyle(
                fontFamily: "Dancing",
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor
              ),
            ),
            Text(
              'Flutter developer'.toUpperCase(),
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10,),
            Divider(
              indent: width / 7,
              endIndent: width / 7,
              thickness: 1,
              height: 20,
              color: Theme.of(context).accentColor,
            ),
            SizedBox(height: 20,),
            createIconWIthText(context, '+48 508805XXX', Icons.phone),
            createIconWIthText(context, 'anna.janusz96@gmail.com', Icons.email),
            createIconWIthText(context, 'https://github.com/hanyska', 'assets/images/github-logo.png'),
          ],
        )
      ),
    );
  }
}
