import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:namer_app/config/Routes.dart' as Routing;

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentImageIndex = 0; // Initial index of the current image
  String _currentImage = 'images/character/IMG_9209.png'; // Initial image path
  void _nextImage() {
    setState(() {
      _currentImageIndex =
          (_currentImageIndex + 1) % Routing.Character_link.length;
      _currentImage = Routing.Character_link[_currentImageIndex];
    });
  }

  void _previousImage() {
    setState(() {
      _currentImageIndex =
          (_currentImageIndex - 1 + Routing.Character_link.length) %
              Routing.Character_link.length;
      _currentImage = Routing.Character_link[_currentImageIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(

        //   title: SizedBox.shrink(),
        // ),
        body: Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    Routing.Background[_currentImageIndex]),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                // Expanded(
                GestureDetector(
                  onTap: () {
                    // Navigate to the desired page
                    Navigator.pushNamed(context, '/');
                  },
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(400.0, 20.0, 0.0, 0.0),
                      child: Image.asset(
                        'images/icon/home.png',
                        width: 40,
                        height: 40,
                      )),
                ),

                // ),

                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // Cycle through the image paths
                        _currentImageIndex = (_currentImageIndex) %
                            Routing.CharacterChange_link.length;
                        _currentImage =
                            Routing.CharacterChange_link[_currentImageIndex];
                      });
                    },
                    child: Center(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 300.0, 0.0, 0.0),
                          child: Center(
                            child: Image.asset(
                              _currentImage,
                              width: 600.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(160.0, 0.0, 0.0, 0.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: _previousImage,
                          child:
                              Image.asset('images/icon/back.png', width: 100.0),
                        ),
                        GestureDetector(
                          onTap: _nextImage,
                          child:
                              Image.asset('images/icon/next.png', width: 100.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Stack(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(400.0, 150.0, 0.0, 150.0),
                child: ListView.builder(
                  itemCount: Routing.Character_link.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentImage = Routing
                              .Character_link[index]; // Update _currentImage
                          _currentImageIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                        child: Center(
                          child: Image.asset(
                            Routing.Character_link[index],
                            width: 100.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
          // children: [

          // ],
        ),
      ],
    ));
  }
}
