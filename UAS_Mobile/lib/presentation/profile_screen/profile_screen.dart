import 'package:drian_s_application3/core/app_export.dart';
import 'package:drian_s_application3/presentation/beranda_page_screen/beranda_page_screen.dart';
import 'package:drian_s_application3/presentation/login_page_screen/login_page_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController phonenumberController = TextEditingController();

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Konfirmasi"),
          content: Text("Apakah Anda yakin ingin keluar?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Tidak"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPageScreen()),
                    (route) => false);
              },
              child: Text("Ya"),
            ),
          ],
        );
      },
    );
  }

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
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 27,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 123),
                      child: Text(
                        "Profil",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtIstokWebBold30,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img1490711197x199,
                      height: getVerticalSize(197),
                      width: getHorizontalSize(199),
                      radius: BorderRadius.circular(getHorizontalSize(54)),
                      margin: EdgeInsets.only(
                        left: 60,
                        top: 14,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(333),
                      margin: EdgeInsets.only(top: 64),
                      padding: EdgeInsets.fromLTRB(30, 11, 38, 11),
                      decoration: AppDecoration.txtFillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder28,
                      ),
                      child: Text(
                        "Pebrian Tulus",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtIstokWebRegular17,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(333),
                      margin: EdgeInsets.only(top: 34),
                      padding: EdgeInsets.fromLTRB(30, 12, 39, 12),
                      decoration: AppDecoration.txtFillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder28,
                      ),
                      child: Text(
                        "pebrian123@gmail.com",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtIstokWebRegular17,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(333),
                      margin: EdgeInsets.only(top: 34),
                      padding: EdgeInsets.fromLTRB(30, 12, 39, 12),
                      decoration: AppDecoration.txtFillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder28,
                      ),
                      child: Text(
                        "081234526413",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtIstokWebRegular17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    _showConfirmationDialog(context);
                  },
                  child: Text("Keluar"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
