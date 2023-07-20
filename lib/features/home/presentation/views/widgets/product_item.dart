import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/constant.dart';
import 'package:magdsoft_flutter_task/core/utils/assets.dart';
import 'package:magdsoft_flutter_task/features/home/data/models/Product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductItem extends StatelessWidget {
   ProductItem({Key? key, this.company, this.name, this.price, this.image}) : super(key: key);

   final String? company;
   final String? name;
   final String? price;
   final String? image;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/product');
      },
      child: Card(
        elevation: 8,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CachedNetworkImage(
                    imageUrl: image!,
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.height * 0.37,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black.withOpacity(.5),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                company!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor,
                ),
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                name!,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF464646),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Padding(
                  padding:  EdgeInsets.only(left: 8.0, top: 8.0, bottom: 20.0),
                  child: Text(
                    price!,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF464646),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: kPrimaryColor,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            kPrimaryColor,
                            kPrimaryColor.withOpacity(0),
                          ])),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
