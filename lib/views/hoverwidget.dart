import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpanies_admin/shared/utils.dart';

class ElevatedHoverButton extends StatefulWidget {
  final String? text;
  final VoidCallback? onTap;
  final IconData? icon;

  const ElevatedHoverButton({
    Key? key,
    this.text,
    this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  _ElevatedHoverButtonState createState() => _ElevatedHoverButtonState();
}

class _ElevatedHoverButtonState extends State<ElevatedHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: isHovered ? k2SecondaryGold: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: EdgeInsets.all(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.icon != null) ...[
              Icon(widget.icon, color: Colors.white),
              SizedBox(width: 8),
            ],
            if (widget.text != null) ...[
              Text(
                widget.text!,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
