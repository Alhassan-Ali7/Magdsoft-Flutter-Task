import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/core/utils/assets.dart';

class FilterItem extends StatelessWidget {
  FilterItem({Key? key, required this.index}) : super(key: key);

  final int index;
  String? text;
  ImageProvider<Object>? imageProvider;


  @override
  Widget build(BuildContext context) {
    if(index == 0){
      text = 'All';
      imageProvider =AssetImage(AssetsData.all);
    }else if(index == 1){
      text = 'Acer';
      imageProvider =AssetImage(AssetsData.acer);
    }else{
      text = 'Razer';
      imageProvider =AssetImage(AssetsData.razer);
    }
    return Stack(
      children: [
        Material(
          elevation: 8,
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 5),
          child: Material(
            elevation: 8,
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
            child:  CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Image(
                image: imageProvider!,
                height: 25,
                width: 25,
              ),
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.only(top: 13, left: 55),
          child: Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
