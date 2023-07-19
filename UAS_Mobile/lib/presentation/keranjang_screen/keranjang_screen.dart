// ignore_for_file: unused_import

import 'package:drian_s_application3/core/app_export.dart';
import 'package:drian_s_application3/presentation/deskripsi_barang_screen/deskripsi_barang_screen.dart';
import 'package:drian_s_application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../checkout_screen/checkout_screen.dart';

class KeranjangScreen extends StatefulWidget {
  const KeranjangScreen({Key? key}) : super(key: key);

  @override
  _KeranjangScreenState createState() => _KeranjangScreenState();
}

class _KeranjangScreenState extends State<KeranjangScreen> {
  int quantity = 1;

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decreaseQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        backgroundColor: ColorConstant.gray50,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(25, 18, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Keranjang Saya",
                  style: AppStyle.txtIstokWebRegular18,
                ),
                SizedBox(height: 33),
                Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100, // Adjust the height as needed
                        width: 103,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: 13,
                                width: 13,
                                margin: EdgeInsets.only(left: 10, bottom: 12),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle23,
                              height: 100, // Adjust the height as needed
                              width: 103,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 16, top: 4, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Barang : Knalpot AKRAPOVIC",
                                style: AppStyle.txtIstokWebRegular10,
                              ),
                              SizedBox(height: 1),
                              Text(
                                "Harga: Rp. 2.999.000,00",
                                style: AppStyle.txtIstokWebRegular10,
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: decreaseQuantity,
                                    icon: Icon(Icons.remove),
                                  ),
                                  CustomButton(
                                    height: 25,
                                    width: 112,
                                    text: quantity.toString(),
                                    margin: EdgeInsets.only(left: 5),
                                    variant: ButtonVariant.FillCyanA400,
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingAll5,
                                    fontStyle:
                                        ButtonFontStyle.IstokWebRegular10,
                                  ),
                                  IconButton(
                                    onPressed: increaseQuantity,
                                    icon: Icon(Icons.add),
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
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 51, right: 45, bottom: 26),
          child: CustomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutScreen(
                    quantity:
                        quantity, // Berikan nilai kuantitas dari KeranjangScreen
                  ),
                ),
              );
            },
            height: 35,
            text: "Checkout",
            variant: ButtonVariant.FillLightblue400,
            padding: ButtonPadding.PaddingAll5,
            fontStyle: ButtonFontStyle.IstokWebRegular17,
          ),
        ),
      ),
    );
  }
}
