import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_flutter_way/constants.dart';
import 'package:the_flutter_way/widgets/bottom_nav_bar.dart';
import 'package:the_flutter_way/widgets/search_bar.dart';
import 'package:the_flutter_way/widgets/session_card.dart';

class UpperBodyScreen extends StatelessWidget {
  final String title;
  final String description;
  const UpperBodyScreen({Key key, this.title, this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //give height and width of device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * .005),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '3-10 MIN Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(width: size.width * .6, child: Text(description)),
                    SizedBox(
                      height: 30,
                    ),
                    workOutCard(title: 'Arm Exercises', imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0leSMFEVcZsykkcVT97p4iodvFycSptWsrw&usqp=CAU',),
                    workOutCard(title: 'Chest Exercises', imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTTCYbdMFTkouFvaomI8Auf620Yraqf8YHHQ&usqp=CAU',),
                    workOutCard(title: 'Shoulder Exercises', imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqLWC3DGgPsPvC67G9I1lLZ9TxD5vQQ7PEtg&usqp=CAU',),
                    workOutCard(title: 'Back Exercises', imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK0OFkYZCMsqyaeSlJYaV3KnWP8d98qRGWpw&usqp=CAU',),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class workOutCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  const workOutCard({
    Key key, this.title, this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       print(title);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor)
          ],
          // image:
        ),
        child: Row(
          children: <Widget>[
            Container(
              height: 80,
              width: 83,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                       imgUrl)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontSize: 23),
                    // style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
