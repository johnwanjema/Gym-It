import 'package:flutter/material.dart';
import 'package:the_flutter_way/constants.dart';
import 'package:the_flutter_way/widgets/search_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //give height and width of device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: kBlueColor,
                image: DecorationImage(
                    image: AssetImage('assets/images/meditation_bg.png'),
                    fit: BoxFit.fitWidth)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .005),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '3-10 MIN Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: size.width * .6,
                      child: Text(
                          'Live happier and healthier through meditation')),
                  SizedBox(
                      width: size.width * .6,
                      child: SearchBar()
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
