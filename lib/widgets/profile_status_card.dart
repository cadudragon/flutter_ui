import 'package:flutter/material.dart';

// Widget used in the get_coaching UI
class ProfileStatusCard extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String subtitle;
  final String buttonText;
  final Color buttonColor;
  final EdgeInsets cardMargin;
  final bool online;

  const ProfileStatusCard(
      {Key key,
      this.title,
      this.subtitle,
      this.image,
      this.buttonColor = Colors.green,
      this.buttonText = 'Request',
      this.online = true,
      this.cardMargin})
      : super(key: key);

  const ProfileStatusCard.online(
      {Key key,
      this.title,
      this.subtitle,
      this.image,
      this.buttonColor = Colors.green,
      this.buttonText = 'Request',
      this.cardMargin})
      : online = true,
        super(key: key);

  const ProfileStatusCard.offline(
      {Key key,
      this.title,
      this.subtitle,
      this.image,
      this.buttonText = 'Request',
      this.cardMargin})
      : online = false,
        buttonColor = Colors.grey,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: cardMargin,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 7.0,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 12.0,
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    image: DecorationImage(image: image),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 42.0),
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: online ? buttonColor : Colors.amber,
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 3.0)),
                )
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'QuickSand',
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: 'QuickSand',
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
           Container(
                decoration: BoxDecoration(
                  color: online ? buttonColor : Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                ),
                child: Center(
                  heightFactor: 2.5,
                  child: Text(
                    buttonText,
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'Quicksand'),
                  ),
                ),
              ),
          
          ],
        ),
      ),
    );
  }
}
