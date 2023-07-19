import 'package:drian_s_application3/core/app_export.dart';
import 'package:drian_s_application3/presentation/beranda_page_screen/beranda_page_screen.dart';
import 'package:drian_s_application3/presentation/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';

import '../keranjang_screen/keranjang_screen.dart';

class DeskripsiBarangScreen extends StatelessWidget {
  const DeskripsiBarangScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => BerandaPageScreen()));
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 11,
            top: 9,
            right: 11,
            bottom: 9,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  206,
                ),
                width: getHorizontalSize(
                  327,
                ),
                margin: getMargin(
                  left: 5,
                  top: 17,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          206,
                        ),
                        width: getHorizontalSize(
                          325,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blueGray100,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle23,
                      height: getVerticalSize(
                        206,
                      ),
                      width: getHorizontalSize(
                        325,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Text(
                  "Nama Barang: Knalpot AKRAPOVIC",
                  textAlign: TextAlign.center,
                  style: AppStyle.txtIstokWebRegular18,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  194,
                ),
                margin: getMargin(
                  left: 1,
                  top: 17,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "",
                        style: TextStyle(
                          color: ColorConstant.black90001,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Istok Web',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Harga: Rp.2.999.000,00",
                        style: TextStyle(
                          color: ColorConstant.black90001,
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Istok Web',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: getHorizontalSize(
                      319,
                    ),
                    margin: getMargin(
                      top: 13,
                      right: 17,
                    ),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
                      textAlign: TextAlign.left,
                      style: AppStyle.txtIstokWebRegular14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 17,
            right: 11,
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: getHorizontalSize(
                  209,
                ),
                margin: getMargin(
                  top: 23,
                  bottom: 24,
                ),
                padding: getPadding(
                  left: 23,
                  top: 1,
                  right: 23,
                  bottom: 1,
                ),
                decoration: AppDecoration.txtFillBlue600.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder10,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KeranjangScreen()),
                    );
                  },
                  child: Text(
                    "Tambahkan Ke Keranjang",
                    textAlign: TextAlign.left,
                    style: AppStyle.txtIstokWebRegular14Gray900,
                  ),
                ),
              ),
              CustomImageView(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
                imagePath: ImageConstant.imgImage1,
                height: getVerticalSize(
                  72,
                ),
                width: getHorizontalSize(
                  80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
