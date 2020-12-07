import 'package:flutter/material.dart';

import '../constants.dart';

class workOutCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  final Function press;
  const workOutCard({
    Key key, this.title, this.imgUrl, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
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