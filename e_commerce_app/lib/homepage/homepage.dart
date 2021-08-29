import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce_app/data/homepage_data.dart';
import 'package:e_commerce_app/homepage/homepaeg_all_items.dart';
import 'package:e_commerce_app/styles/homepage_styles.dart';
import 'package:e_commerce_app/widgets/singleProductwidget.dart';
import 'package:e_commerce_app/widgets/tabBardata.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //----Advertisement-------------
  Widget buildAdvertisementPlace() {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
        height: 170,
        child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(microseconds: 1000),
          showIndicator: false,
          images: [
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://blog.creatopy.com/wp-content/uploads/2019/03/creative-advertising-and-pop-culture-pop-culture-ads.png"),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://blog.creatopy.com/wp-content/uploads/2018/05/advertisement-ideas-inspiration-advertising.png"),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //-------------Trending-------------
  Widget buildTrendingProduct({
    String productImage,
    String productName,
    String productModel,
    double productPrice,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30, right: 20, bottom: 20),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.network(productImage),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: HomePageSyles.trendingProductNamStyle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    productModel,
                    style: HomePageSyles.trendingProductModelStyle,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: MaterialButton(
                color: Colors.pinkAccent,
                elevation: 0,
                height: 45,
                shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(0.7),
                ),
                onPressed: () {},
                child: Text(
                  "\$ $productPrice",
                  style: HomePageSyles.trendingProductPriceStyle,
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        ///////--------------- AppBar and TabBar Designs ------------------------
        appBar: AppBar(
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(
              horizontal: 32,
            ),
            indicator: BoxDecoration(
              color: Colors.transparent,
            ),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.pink,
            tabs: [
              Text('All'),
              Text('Clothing'),
              Text('Shoes'),
              Text("Accessories"),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.black),
            IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
                color: Colors.black),
          ],
          title: Column(
            children: [
              Text(
                'Welcome',
                style: HomePageSyles.appBarUpperTitleStyle,
              ),
              Text('Adidas Shopping',
                  style: HomePageSyles.appBarLowerTitleStyle),
            ],
          ),
        ),
        /////////----------------- HomepageBody Designs-------------------------------------------
        body: TabBarView(children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              buildAdvertisementPlace(),
              ShowAllItems(
                leftText: 'New Arrivals',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: true,
                  itemCount: singleProductData.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    var data = singleProductData[index];
                    return SinglProductWidget(
                      onPressed: () {},
                      productImage: data.productImage,
                      productModel: data.productModel,
                      productName: data.productName,
                      productOldPrice: data.productOldPrice,
                      productPrice: data.productPrice,
                    );
                  },
                ),
              ),
              Divider(
                indent: 16,
                endIndent: 16,
              ),
              //////--------------------Trending---------------------------------------------
              ShowAllItems(
                leftText: "What's trending",
              ),
              buildTrendingProduct(
                productImage:
                    'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/85e3b8b43f314661a942abca00920ade_9366/Face_Covers_3-Pack_M-L_Blue_H32391_21_model.jpg',
                productModel: 'Accessories',
                productName: 'Face Covers 3-Pack M/L',
                productPrice: 20,
              ),
              buildTrendingProduct(
                productImage:
                    'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/94dd5eef93b6443d8b7cad2801311442_9366/Adicolor_Classic_Festival_Bag_Red_H35580_01_standard.jpg',
                productModel: 'Accessories',
                productName: 'Adicolor Bag',
                productPrice: 22,
              ),
              buildTrendingProduct(
                productImage:
                    'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/ac5b4461490e4bc7b70bab1901691af0_9366/Argentina_Away_Jersey_Blue_GE5477_01_laydown.jpg',
                productModel: 'Cloths',
                productName: 'Argentina Away Jersey',
                productPrice: 70,
              ),
              //////-----------------History ----------------------------------------------
              ShowAllItems(
                leftText: "History",
              ),
              Container(
                height: 240,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: true,
                  itemCount: singleProductData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1.5,
                  ),
                  itemBuilder: (context, index) {
                    var data = singleProductData[index];
                    return SinglProductWidget(
                      onPressed: () {},
                      productImage: data.productImage,
                      productModel: data.productModel,
                      productName: data.productName,
                      productOldPrice: data.productOldPrice,
                      productPrice: data.productPrice,
                    );
                  },
                ),
              ),
            ],
          ),
          TabBarData(
            productData: clothsData,
          ),
          TabBarData(
            productData: shoesData,
          ),
          TabBarData(
            productData: accessoriesData,
          ),
        ]),
      ),
    );
  }
}
