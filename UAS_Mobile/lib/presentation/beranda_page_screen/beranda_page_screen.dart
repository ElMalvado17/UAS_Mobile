import 'dart:async';

import 'package:drian_s_application3/core/app_export.dart';
import 'package:drian_s_application3/presentation/deskripsi_barang_screen/deskripsi_barang_screen.dart';
import 'package:drian_s_application3/presentation/profile_screen/profile_screen.dart';
import 'package:drian_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:drian_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BerandaPageScreen extends StatefulWidget {
  const BerandaPageScreen({Key? key}) : super(key: key);

  @override
  _BerandaPageScreenState createState() => _BerandaPageScreenState();
}

class _BerandaPageScreenState extends State<BerandaPageScreen> {
  late Timer _timer;
  late String _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = _getCurrentTime();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = _getCurrentTime();
      });
    });
  }

  String _getCurrentTime() {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm:ss').format(now);
    return formattedTime;
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(110),
          title: Padding(
            padding: getPadding(left: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Digital Clock Display
                Text(
                  _currentTime,
                  style: TextStyle(
                    color: Colors.blue, // You can customize the color here
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                AppbarTitle(
                  text: "Adrian Felix N.H",
                  margin: getMargin(left: 7, top: 41),
                ),
                AppbarTitle(
                  text: "081234657231",
                  margin: getMargin(left: 11, top: 7, right: 10),
                ),
              ],
            ),
          ),
          actions: [
            CustomImageView(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              imagePath: ImageConstant.img1490711,
              height: getSize(82),
              width: getSize(82),
              radius: BorderRadius.circular(
                getHorizontalSize(41),
              ),
              margin: getMargin(left: 14, top: 28, right: 14),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: getPadding(
              left: 13,
              top: 22,
              right: 13,
              bottom: 22,
            ),
            child: Column(
              children: [
                Text(
                  "DAFTAR BARANG",
                  style: AppStyle.txtIstokWebRegular28,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 37),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: getPadding(
                          left: 10,
                          top: 11,
                          right: 10,
                          bottom: 11,
                        ),
                        decoration: AppDecoration.fillTeal300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DeskripsiBarangScreen(),
                                  ),
                                );
                              },
                              imagePath: ImageConstant.imgRectangle23,
                              height: getVerticalSize(89),
                              width: getHorizontalSize(123),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Nama Barang:\nKnalpot Akrakovic",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtIstokWebRegular8Black90002,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Harga:\n2.999.000,00",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtIstokWebRegular8Black90003,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: getPadding(
                          left: 10,
                          top: 11,
                          right: 10,
                          bottom: 11,
                        ),
                        decoration: AppDecoration.fillTeal300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle24,
                              height: getVerticalSize(89),
                              width: getHorizontalSize(122),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Nama Barang:\nRantai WR3",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtIstokWebRegular8Black90002,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Harga:\n2.999.000,00",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtIstokWebRegular8Black90001,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 43),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: getPadding(
                          left: 10,
                          top: 5,
                          right: 10,
                          bottom: 5,
                        ),
                        decoration: AppDecoration.fillTeal300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle27,
                              height: getVerticalSize(91),
                              width: getHorizontalSize(122),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Nama Barang:\nShock RCB MONO",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtIstokWebRegular8Black90002,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Harga:\n2.999.000,00",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtIstokWebRegular8Black90001,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: getPadding(
                          left: 10,
                          top: 5,
                          right: 10,
                          bottom: 5,
                        ),
                        decoration: AppDecoration.fillTeal300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle34,
                              height: getVerticalSize(91),
                              width: getHorizontalSize(122),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Nama Barang:\nUnderbond",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtIstokWebRegular8Black90002,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Harga:\n2.999.000,00",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtIstokWebRegular8Black90004,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
