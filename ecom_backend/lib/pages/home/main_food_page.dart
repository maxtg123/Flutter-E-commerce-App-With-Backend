import 'package:ecom_backend/pages/home/food_page_body.dart';
import 'package:ecom_backend/utils/colors.dart';
import 'package:ecom_backend/utils/dimensions.dart';
import 'package:ecom_backend/widgets/big_text.dart';
import 'package:ecom_backend/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key?key}) :super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
           //showing the header
          Container(
      child:Container(
        margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.width15),
        padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column( 
              children: [
               BigText(text:"Ho Chi Minh", color: AppColors.mainColor), 
               Row(
                children: [
                   SmallText(text:"Binh Thanh",color: Colors.black54),
                   Icon(Icons.arrow_drop_down_rounded)
                ],
               )
              ],
            ),
            Center(
              child: Container(
                width: Dimensions.height45,
                height: Dimensions.height45,
                child: Icon(Icons.search , color:Colors.white, size: Dimensions.iconSize24,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.mainColor,
                ),
              ),
            )
          ],
        ),
      ),
    ),
      //showing the body
    Expanded(child: SingleChildScrollView(
      child:FoodPageBody(),

    ))
        ],
      ),
    );
  }
}