import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class RoundedButton extends StatelessWidget {
  final double size;
  final String iconSrc;
  final Color color, iconColor;
  final VoidCallback press;

  const RoundedButton({
    Key key,
    this.size = 64,
    @required this.iconSrc,
    @required this.color,
    @required this.iconColor,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(size),
      width: getProportionateScreenWidth(size),
      child: FlatButton(
        padding: EdgeInsets.all(15 / 64 * size),
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: press,
        child: SvgPicture.asset(iconSrc, color: iconColor),
      ),
    );
  }
}
