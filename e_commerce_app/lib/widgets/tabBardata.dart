import 'package:e_commerce_app/data/homepage_data.dart';
import 'package:e_commerce_app/models/SingleProductModel.dart';
import 'package:e_commerce_app/widgets/singleProductwidget.dart';
import 'package:flutter/material.dart';

class TabBarData extends StatelessWidget {
  final List<SingleproductModel> productData;
  TabBarData({@required this.productData});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: productData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        var data = productData[index];
        return SinglProductWidget(
          onPressed: () {},
          productImage: data.productImage,
          productModel: data.productModel,
          productName: data.productName,
          productOldPrice: data.productOldPrice,
          productPrice: data.productPrice,
        );
      },
    );
  }
}
