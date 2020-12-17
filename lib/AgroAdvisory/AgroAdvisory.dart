import 'package:flutter/material.dart';
import 'package:login_app/RealHomeDirectory/Data.dart';

class AgroAdvisory extends StatefulWidget {
  @override
  _AgroAdvisory createState() => _AgroAdvisory();
}

class _AgroAdvisory extends State<AgroAdvisory> {

  final int index=0;
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _controller,
      children: [
        AdvisoryWidget(index: index),
        AdvisoryWidget(index: index),
      ],
    );
  }
}

class AdvisoryWidget extends StatelessWidget {
  const AdvisoryWidget({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.black,
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "Peter Parker",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  background: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: double.infinity,
                        child: Image.asset(
                          topStories[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.8),
                            ],
                            begin: Alignment.topCenter,
                            stops: [0.6, 1],
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 30, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "World",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "Sigmar"),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 45,
                                    decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "assets/images/e4.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${topStories[index].time} hours ago",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Text(
                  topStories[index].title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  topStories[index].story,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}