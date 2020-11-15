import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class categoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const categoryCard({
    Key key,
    this.svgSrc,
    this.title, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Column(
              children: <Widget>[
                Spacer(),
                SvgPicture.asset(svgSrc),
                Spacer(),
                Text(title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 15))
              ],
            ),
          ),
        ),
      ),
    );
  }
}