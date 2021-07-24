import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BorderRadiusPreviewer extends StatefulWidget {
  BorderRadiusPreviewer({Key? key}) : super(key: key);

  @override
  _BorderRadiusPreviewerState createState() => _BorderRadiusPreviewerState();
}

class _BorderRadiusPreviewerState extends State<BorderRadiusPreviewer> {
  late Size _size;

  double _topLeft = 0;
  double _topRight = 0;
  double _bottomLeft = 0;
  double _bottomRight = 0;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          "Border Radius Previewer",
          style: GoogleFonts.lato(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: _size.width,
                child: Center(
                    child: Container(
                  width: _size.width / 2,
                  height: _size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular((_topLeft / 100) * _size.width / 2),
                      topRight:
                          Radius.circular((_topRight / 100) * _size.width / 2),
                      bottomLeft: Radius.circular(
                          (_bottomLeft / 100) * _size.width / 2),
                      bottomRight: Radius.circular(
                          (_bottomRight / 100) * _size.width / 2),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink,
                        Colors.lightBlueAccent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                )),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    // slider topleft
                    Row(
                      children: [
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(0 / 360),
                          child: Container(
                              margin: EdgeInsets.only(
                                left: 8,
                              ),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/radius.png'),
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Slider(
                            value: _topLeft.toDouble(),
                            min: 0,
                            max: 100,
                            divisions: 100,
                            activeColor: Colors.pinkAccent[400],
                            inactiveColor: Colors.grey,
                            label: '${_topLeft.round()} %',
                            onChanged: (double newValue) {
                              setState(() {
                                _topLeft = newValue.round().toDouble();
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            "${_topLeft.round()} %",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // slider topRight
                    Row(
                      children: [
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(90 / 360),
                          child: Container(
                              margin: EdgeInsets.only(
                                left: 8,
                              ),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/radius.png'),
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Slider(
                            value: _topRight.toDouble(),
                            min: 0,
                            max: 100,
                            divisions: 100,
                            activeColor: Colors.pinkAccent[400],
                            inactiveColor: Colors.grey,
                            label: '${_topRight.round()} %',
                            onChanged: (double newValue) {
                              setState(() {
                                _topRight = newValue.round().toDouble();
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            "${_topRight.round()} %",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // slider bottomRight
                    Row(
                      children: [
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(180 / 360),
                          child: Container(
                              margin: EdgeInsets.only(
                                left: 8,
                              ),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/radius.png'),
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Slider(
                            value: _bottomRight.toDouble(),
                            min: 0,
                            max: 100,
                            divisions: 100,
                            activeColor: Colors.pinkAccent[400],
                            inactiveColor: Colors.grey,
                            label: '${_bottomRight.round()} %',
                            onChanged: (double newValue) {
                              setState(() {
                                _bottomRight = newValue.round().toDouble();
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            "${_bottomRight.round()} %",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // slider bottomLeft
                    Row(
                      children: [
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(270 / 360),
                          child: Container(
                              margin: EdgeInsets.only(
                                left: 8,
                              ),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/radius.png'),
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Slider(
                            value: _bottomLeft.toDouble(),
                            min: 0,
                            max: 100,
                            divisions: 100,
                            activeColor: Colors.pinkAccent[400],
                            inactiveColor: Colors.grey,
                            label: '${_bottomLeft.round()} %',
                            onChanged: (double newValue) {
                              setState(() {
                                _bottomLeft = newValue.round().toDouble();
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            "${_bottomLeft.round()} %",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
