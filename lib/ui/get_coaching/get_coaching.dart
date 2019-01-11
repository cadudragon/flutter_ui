import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/profile_status_card.dart';

class GetCoaching extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

     var mediaQuery = MediaQuery.of(context);

    /*24 is for notification bar on Android*/
     double itemHeight = 0.0;
     double itemWidth = 0.0;


    if(mediaQuery.orientation == Orientation.landscape){
     itemHeight = (mediaQuery.size.height - kToolbarHeight - 24) / 1;
      itemWidth = mediaQuery.size.width / 2;
    }else{
          itemHeight = (mediaQuery.size.height - kToolbarHeight - 24) / 2;
    itemWidth = mediaQuery.size.width / 2;
    }

    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(colors: Colors.green, size: 25.0),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.4),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Get Coaching',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey),
                    ]),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text('YOU HAVE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Quicksand',
                                  fontSize: 14.0)),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: Text('206',
                              style: TextStyle(
                                  color: Colors.black,
                                  // fontFamily: 'Quicksand',
                                  fontSize: 40.0)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[100].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          'Buy more',
                          style: TextStyle(
                              fontFamily: 'QuickSand',
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
           
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY CHOACHES',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'QuickSand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'QuickSand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            primary: false,
              childAspectRatio: (itemWidth / itemHeight),
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              
              ProfileStatusCard.online(
                title: 'Cadudragon',
                subtitle: 'Drop that star',
                image: AssetImage('cadudragon.jpg'),
                cardMargin: const EdgeInsets.fromLTRB(20.0, 0.0 , 4.0, 10.0),
              ),
              ProfileStatusCard.offline(
                title: 'Cadudragon',
                subtitle: 'Away for the \nnext hours',
                image: AssetImage('cadudragon.jpg'),
               cardMargin: const EdgeInsets.fromLTRB(4.0, 0.0 , 25.0, 10.0),
              ),
              ProfileStatusCard.online(
                title: 'Cadudragon',
                subtitle: 'Drop a star',
                image: AssetImage('cadudragon.jpg'),
                cardMargin: const EdgeInsets.fromLTRB(20.0, 0.0 , 4.0, 10.0),
              ),
              ProfileStatusCard.offline(
                title: 'Cadudragon',
                subtitle: 'Away for \nthe next',
                image: AssetImage('cadudragon.jpg'),
               cardMargin: const EdgeInsets.fromLTRB(4.0, 0.0 , 25.0, 10.0),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}

