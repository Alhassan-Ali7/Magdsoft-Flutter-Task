import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .05,
        top:MediaQuery.of(context).size.width * .1,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.75,
        child: const Material(
          color: Colors.white,
          borderRadius:  BorderRadius.all(Radius.circular(10)),
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFB1B1B1),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
