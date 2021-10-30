import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/my_address_page/controller/my_address_page_controller.dart';

Widget buildMyAddressPageAllWidget(BuildContext context, MyAddressPageController myAddressPageController,SizeConfig sizeConfig) {

  return Padding(
    padding: EdgeInsets.all(8),
    child: Column(
      children: [
        buildButton(context, myAddressPageController, sizeConfig),

        Flexible(child: showAllOldAddress(context, myAddressPageController, sizeConfig)),
      ],
    ),
  );
}

Widget showAllOldAddress(BuildContext context, MyAddressPageController myAddressPageController,SizeConfig sizeConfig){

/*  List<Map<String,String>> addressList = [
    {"city" : "Mandalay", "phone" : "0948948484"},
    {"city" : "Yangon", "phone" : "0956765665"},

  ];*/

  return Obx(
        ()=> Container( child : myAddressPageController.allAddressList.length>0?   ListView.builder(

          itemCount: myAddressPageController.allAddressList.length,
          itemBuilder: (context,int index) {

        return Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 16),

          decoration :   BoxDecoration(
              color: Colors.white,

              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(
                color: Colors.grey,

                width: 1,
              ),),
            child: Column(
                children: [

                  Row(
                    children: [
                      Icon(Icons.location_city_outlined,color: Colors.black,size: 22.sp,),
                      SizedBox(
                        width: 16,
                      ),
                      Text(myAddressPageController.allAddressList[index].regId,style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.bold), ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone,color: Colors.black,size: 22.sp,),
                      SizedBox(
                        width: 16,
                      ),
                      Text(myAddressPageController.allAddressList[0].cusAddress,style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.bold), ),
                      Spacer(),
                      InkWell(
                         onTap: () {
                           myAddressPageController.deleteAddress(index);
                           print( myAddressPageController.allAddressList.length);
                         },
                          child: Icon(Icons.delete_outline_rounded,color: Theme.of(context).primaryColor,size: 22.sp,)),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.edit_location_outlined,color: Colors.black,size: 22.sp,),
                    ],
                  ),

                ],
              ),


        );
      }

      )

   : Text("You havn't add your address yet") ));
}

Widget  buildButton(BuildContext context, MyAddressPageController myAddressPageController,SizeConfig sizeConfig){

  return SizedBox(
    width: double.infinity,
    // height: double.infinity,
    child: RaisedButton(
      color: Theme.of(context).primaryColor,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.add_circle_outline,size: 25.sp,),
          SizedBox(
            width: 8,
          ),
          Text("Add Address",style: TextStyle(fontSize: kLargeButtonTextFontSize.sp,color: Colors.white),),
        ],
      ),
      onPressed: () {

        Get.toNamed("/add-address-page");
      },

    ),
  );
}