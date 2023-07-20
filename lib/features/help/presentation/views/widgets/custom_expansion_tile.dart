import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/constant.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  final String title;
  final String description;

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.92,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: ExpansionTile(
          title: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: kPrimaryColor,
            ),
          ),
          children: <Widget>[
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.description,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF464646),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
