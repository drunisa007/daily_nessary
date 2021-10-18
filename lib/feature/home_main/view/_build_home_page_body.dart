import 'package:flutter/material.dart';
import 'package:snack_delivery/core/constants/aj_const_list_data.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snack_delivery/core/utils/default_style.dart';

Widget buildHomePageBody(BuildContext context,SizeConfig sizeConfig) {


  return GridView.builder(

    itemCount: snackModelList.length,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (6/5),
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),


      itemBuilder: (context,int index) {



      return Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [

              Image.asset("assets/images/snack.png",height: sizeConfig.blockSizeVertical*10,width: sizeConfig.blockSizeHorizontal*10,fit: BoxFit.cover,),

              SizedBox(height: 8,),
              Text(snackModelList[index].snackName,style:  TextStyle(color: colorBlack,fontSize: 20.sp),)
            ],
          ),
        )
      );
  });

}