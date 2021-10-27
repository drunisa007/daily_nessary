import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/add_address_page/controller/add_address_page_controller.dart';

Widget buildAddAddressPageAllWidget(BuildContext context,
    AddAddressPageController addAddressPageController, SizeConfig sizeConfig) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(child: addAddressWidget(context, addAddressPageController, sizeConfig)),
  );
}

Widget addAddressWidget(BuildContext context,
    AddAddressPageController addAddressPageController, SizeConfig sizeConfig) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
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
            Icon(Icons.map,size: 18.sp,color: Colors.black),
            SizedBox(width: 8,),
            Text("Town",style: TextStyle(color: Colors.black,fontSize: kMediumBodyFontSize.sp,),)
          ],
        ),
        SizedBox(
          height: 4,
        ),
        GetBuilder<AddAddressPageController>(
          builder: (addAddressPageController) => Container(

            padding: EdgeInsets.only(left: 8,right: 8),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(
          color: Colors.grey,

          width: 1,
        ),),

            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(

                isExpanded: true,

                value: addAddressPageController.chosenValue,

                //elevation: 5,
                style: TextStyle(color: Colors.black,fontSize: kMediumBodyFontSize.sp,),

                items: <String>[
                  'Android',
                  'IOS',
                  'Flutter',
                  'Node',
                  'Java',
                  'Python',
                  'PHP',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,style:TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,) ,),
                  );
                }).toList(),
                hint: Text(
                  "Please choose your city",
                  style: TextStyle(
                      color: Colors.grey, fontSize: kMediumBodyFontSize.sp, fontWeight: FontWeight.w600),
                ),
                onChanged: (value) {
                  addAddressPageController.changeDropDownValue(value!);

                  print(addAddressPageController.chosenValue);
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(Icons.location_on_rounded,size: 18.sp,color: Colors.black),
            SizedBox(width: 8,),
            Text("Address",style: TextStyle(color: Colors.black,fontSize: kMediumBodyFontSize.sp,),)
          ],
        ),
        SizedBox(
          height: 4,
        ),
        TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
              color: Colors.black,
              fontSize: kLargeTitleFontSize.sp,
              fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            fillColor: Colors.white,
            counterText: "",
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            hintText: "Enter you address",
            hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.8),
                fontSize: kMediumBodyFontSize.sp),
          ),
          maxLength: 11,
        ),
        SizedBox(
          height: 16,
        ),

        SizedBox(
          width: double.infinity,
          // height: double.infinity,
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text("Add Address",style: TextStyle(fontSize: kLargeButtonTextFontSize.sp,color: Colors.white),),
            onPressed: () {  },

          ),
        )
      ],
    ),
  );
}
