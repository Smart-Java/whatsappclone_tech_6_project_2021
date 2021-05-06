import 'package:flutter/material.dart';

class SlidingPage extends StatefulWidget {
  @override
  _SlidingPageState createState() => _SlidingPageState();
}

class _SlidingPageState extends State<SlidingPage> {
  bool _change1;
  bool _change2;
  int _selectedPage = 0;
  PageController _pageController;

  @override
  void initState() {
    _change1 = true;
    _change2 = false;
    _pageController = PageController(initialPage: _selectedPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Container(
      //         height: 100.0,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.only(
      //               bottomLeft: Radius.circular(10.0),
      //               bottomRight: Radius.circular(10.0),
      //               topLeft: Radius.circular(10.0),
      //               topRight: Radius.circular(10.0)),
      //           color: Colors.amber,
      //         ),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text(
      //               'Second Page',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //             SizedBox(
      //               height: 10.0,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Container(
      //                   height: 20,
      //        width: 20,
      //                   decoration: BoxDecoration(
      //                       shape: BoxShape.circle,
      //                       color: Colors.white),
      //                 ),
      //                 SizedBox(
      //               width: 5.0,
      //             ),
      //                 Container(
      //                   height: 20,
      //        width: 20,
      //                   decoration: BoxDecoration(
      //                       shape: BoxShape.circle,
      //                       color: _change ? Colors.red : Colors.white),
      //                 ),
      //               ],
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: SizedBox(
        height: 150,
        child: PageView(
          onPageChanged: (value) {
            setState(() {
              _selectedPage = value;
              if (_selectedPage == 1) {
                _change1 = false;
                _change2 = true;
              } else if (_selectedPage == 0) {
                _change2 = false;
                _change1 = true;
              }
            });
          },
          controller: _pageController,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  color: Colors.amber,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'First Page',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _change1 ? Colors.red : Colors.white),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _change2 ? Colors.red : Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  color: Colors.amber,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Second Page',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _change1 ? Colors.red : Colors.white),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _change2 ? Colors.red : Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
