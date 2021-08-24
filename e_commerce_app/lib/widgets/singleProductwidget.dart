import 'package:flutter/material.dart';

class SinglProductWidget extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productModel;
  final double productPrice;
  final double productOldPrice;
  final Function onPressed;

  const SinglProductWidget(
      {this.productName,
      this.productImage,
      this.productModel,
      this.productPrice,
      this.productOldPrice,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(productImage),
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  	SizedBox(height:18,),
                    Text(
                      productName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height:6,),
                    Text(
                      productModel,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                    SizedBox(height:7,),
                    Row(
                      children: [
                        Text(
                          "\$ $productPrice",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "\$ $productOldPrice",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
