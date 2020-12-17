import 'package:flutter/material.dart';
import 'Data.dart';
import 'SectionOne.dart';
import 'SectionTwo.dart';

class MainRealHome extends StatefulWidget {
  @override
  _MainRealHomeState createState() => _MainRealHomeState();
}

class _MainRealHomeState extends State<MainRealHome> {

  PageController _controller = PageController(
    initialPage: 0,
  );

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/QA.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 35,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, i) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        _controller.animateToPage(i,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        sections[i],
                        style: TextStyle(
                          color: currentPage == i
                              ? Colors.black
                              : Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: sections.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: [
                  SectionOne(),
                  SectionTwo(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
