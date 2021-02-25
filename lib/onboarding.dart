import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFFFE500) : Color(0xFFD0D1D1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 650.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/image/SC.png',
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.all(30)),
                                Center(
                                  child: AutoSizeText(
                                    'Flexible Schedule',
                                    style: TextStyle(
                                      color: Color(0xFFffffff),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CM Sans Serif',
                                      fontSize: 35.0,
                                      height: 2.5,
                                    ),
                                    maxLines: 3,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(14),
                                ),
                                Center(
                                  child: AutoSizeText(
                                    'Flexible schedule gives you choice to get lesson at your free time!',
                                    style: TextStyle(
                                        color: Color(0xFFffffff),
                                        fontFamily: 'CM Sans Serif',
                                        fontSize: 25,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      //---------------------------------Next Page--------------------------
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/image/VS.png',
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.all(30)),
                                Center(
                                  child: AutoSizeText(
                                    'Various Subjects',
                                    style: TextStyle(
                                      color: Color(0xFFffffff),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CM Sans Serif',
                                      fontSize: 35.0,
                                      height: 2.5,
                                    ),
                                    maxLines: 3,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(14),
                                ),
                                Center(
                                  child: AutoSizeText(
                                    'Various subjects that can be learnt and not just limited to normal courses!',
                                    style: TextStyle(
                                        color: Color(0xFFffffff),
                                        fontFamily: 'CM Sans Serif',
                                        fontSize: 25,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      //---------------------------------Next Page--------------------------
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/image/TC.png',
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.all(30)),
                                Center(
                                  child: AutoSizeText(
                                    'Best Tutors',
                                    style: TextStyle(
                                      color: Color(0xFFffffff),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CM Sans Serif',
                                      fontSize: 35.0,
                                      height: 2.5,
                                    ),
                                    maxLines: 3,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(14),
                                ),
                                Center(
                                  child: AutoSizeText(
                                    'Provide the best tutors for you to gain better study experience!',
                                    style: TextStyle(
                                        color: Color(0xFFffffff),
                                        fontFamily: 'CM Sans Serif',
                                        fontSize: 25,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      //---------------------------------Next Page--------------------------
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/image/EW.png',
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.all(30)),
                                Center(
                                  child: AutoSizeText(
                                    'E-wallet',
                                    style: TextStyle(
                                      color: Color(0xFFffffff),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CM Sans Serif',
                                      fontSize: 35.0,
                                      height: 2.5,
                                    ),
                                    maxLines: 3,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(14),
                                ),
                                Center(
                                  child: AutoSizeText(
                                    'Online payment is easier by using our E-wallet payment and save your time!',
                                    style: TextStyle(
                                        color: Color(0xFFffffff),
                                        fontFamily: 'CM Sans Serif',
                                        fontSize: 25,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 70.0,
              width: double.infinity,
              color: Color(0xFFffffff),
              child: GestureDetector(
                onTap: () => print('Get started!'),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0.0),
                    child: AutoSizeText(
                      'Get started!',
                      style: TextStyle(
                        color: Color(0xFF5B16D0),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
