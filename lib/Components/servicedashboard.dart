import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/RealHomeDirectory/MainRealHome.dart';

class ServiceDashBoard extends StatefulWidget {
  @override
  _ServiceDashBoard createState() => _ServiceDashBoard();
}

class _ServiceDashBoard extends State<ServiceDashBoard> {
  Items item1 = new Items(
      title: "LandScaping",
      subtitle: "March, Wednesday",
      event: "3   Events",
      img: "images/plant.png");

  Items item2 = new Items(
    title: "HydroCronic",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "images/ADVISORY.png",
  );
  Items item3 = new Items(
    title: "Consultancy",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "images/forum.png",
  );


  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
              onTap: () {
                setState(() {

                  if (data.title == 'Crop') {
                    Navigator.pushNamed(context, '/Crop');
                    print(data.title);
                  }
                  if(data.title=='Weather'){
                    Navigator.pushNamed(context, '/Calender');
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      data.subtitle,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white38,
                              fontSize: 10,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.event,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;

  Items({this.title, this.subtitle, this.event, this.img});
}
