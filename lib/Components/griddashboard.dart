import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/RealHomeDirectory/MainRealHome.dart';

class GridDashBoard extends StatefulWidget {
  @override
  _GridDashBoardState createState() => _GridDashBoardState();
}

class _GridDashBoardState extends State<GridDashBoard> {
  Items item1 = new Items(
      title: "Crop",
      subtitle: "March, Wednesday",
      event: "3   Events",
      img: "images/plant.png");

  Items item2 = new Items(
    title: "Agro Advisory",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "images/ADVISORY.png",
  );
  Items item3 = new Items(
    title: "Agri Forum",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "images/forum.png",
  );
  Items item4 = new Items(
    title: "Weather",
    subtitle: "Rose favirited your Post",
    event: "",
    img: "images/WEATHER.png",
  );
  Items item5 = new Items(
    title: "Soil",
    subtitle: "Homework, Design",
    event: "4 Items",
    img: "images/soil.png",
  );
  Items item6 = new Items(
    title: "Products",
    subtitle: "",
    event: "2 Items",
    img: "images/QA.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
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
                  if(data.title=='Agro Advisory'){
                    Navigator.pushNamed(context, '/Advisory');
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
