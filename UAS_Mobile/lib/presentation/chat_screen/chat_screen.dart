// ignore_for_file: must_be_immutable

import 'package:drian_s_application3/core/app_export.dart';
import 'package:drian_s_application3/presentation/beranda_page_screen/beranda_page_screen.dart';
import 'package:drian_s_application3/widgets/custom_button.dart';
import 'package:drian_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController readyconfirmatiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return BerandaPageScreen();
              }));
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 11,
            top: 28,
            right: 11,
            bottom: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Akang Idan",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtIstokWebBold30Black900,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  45,
                ),
                width: getHorizontalSize(
                  150,
                ),
                text: "Silahkan di order",
                margin: getMargin(
                  left: 8,
                  top: 59,
                ),
                variant: ButtonVariant.FillBluegray100,
                shape: ButtonShape.Square,
                padding: ButtonPadding.PaddingAll14,
                fontStyle: ButtonFontStyle.IstokWebRegular11,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: getHorizontalSize(
                    157,
                  ),
                  margin: getMargin(
                    top: 15,
                    right: 13,
                  ),
                  padding: getPadding(
                    left: 43,
                    top: 12,
                    right: 43,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.fillBluegray100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "Ready bang?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtIstokWebRegular11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: readyconfirmatiController,
                hintText: "Semua Ready silahkan di oreder",
                margin: getMargin(
                  top: 30,
                  right: 45,
                  bottom: 5,
                ),
                fontStyle: TextFormFieldFontStyle.IstokWebRegular11,
                textInputAction: TextInputAction.done,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 37,
            right: 26,
            bottom: 35,
          ),
          decoration: AppDecoration.fillBluegray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: getPadding(
                  top: 10,
                  bottom: 8,
                ),
                child: Text(
                  "Ketikkan Text",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtIstokWebRegular14,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  40,
                ),
                width: getHorizontalSize(
                  92,
                ),
                text: "Send",
                variant: ButtonVariant.FillRed300,
                shape: ButtonShape.RoundedBorder10,
                fontStyle: ButtonFontStyle.IstokWebRegular11Black90005,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
