import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';
import '../keranjang_screen/keranjang_screen.dart';

class CheckoutScreen extends StatelessWidget {
  final int quantity;

  const CheckoutScreen({Key? key, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => KeranjangScreen()),
              );
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.fromLTRB(12, 10, 12, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Checkout",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtIstokWebRegular20,
                      ),
                      Container(
                        width: getHorizontalSize(182),
                        margin: EdgeInsets.only(left: 2, top: 12),
                        child: Text(
                          "Suka Dia Sitorus   |  0809-0001-2000\nJl. Surga sebelah sekolah Gg. Neraka\nMedan Selayang, Medan Tuntungan\nIndonesia 20119",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtIstokWebRegular11,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(94),
                        width: getHorizontalSize(125),
                        margin: EdgeInsets.only(left: 11, top: 54),
                        padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                        decoration: AppDecoration.fillTeal300,
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle23,
                              height: getVerticalSize(73),
                              width: getHorizontalSize(106),
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4, top: 165, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getVerticalSize(29),
                        width: getHorizontalSize(95),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Rp. 2.999.000,00",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtIstokWebRegular10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Knalpot AKRAPOVIC",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtIstokWebRegular10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Text(
                          quantity.toString(), // Menampilkan kuantitas
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtIstokWebRegular10,
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
          padding: EdgeInsets.only(left: 71, right: 72, bottom: 41),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(ColorConstant.cyan400),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.all(8)),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Terimakasih telah membeli barang ini."),
                ),
              );
            },
            child: Text(
              "Bayar",
            ),
          ),
        ),
      ),
    );
  }
}
