// ignore_for_file: must_be_immutable, unused_field

import 'package:drian_s_application3/core/app_export.dart';
import 'package:drian_s_application3/presentation/register_page_screen/register_page_screen.dart';
import 'package:drian_s_application3/widgets/custom_button.dart';
import 'package:drian_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../beranda_page_screen/beranda_page_screen.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: getPadding(top: 61),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "LOGIN",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtIstokWebRegular28Black90099,
                ),
                SizedBox(height: 36),
                CustomImageView(
                  imagePath: ImageConstant.imgDapletterlogo,
                  height: getVerticalSize(146),
                  width: getHorizontalSize(147),
                  radius: BorderRadius.circular(getHorizontalSize(40)),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: phonenumberController,
                  hintText: "Nomer Hp:",
                  margin: getMargin(left: 18, top: 29),
                  shape: TextFormFieldShape.CircleBorder32,
                  padding: TextFormFieldPadding.PaddingAll21,
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: passwordController,
                  hintText: "Password:",
                  margin: getMargin(left: 18, top: 14),
                  shape: TextFormFieldShape.CircleBorder32,
                  padding: TextFormFieldPadding.PaddingAll21,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  isObscureText: true,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BerandaPageScreen(),
                      ),
                    );
                  },
                  height: getVerticalSize(44),
                  width: getHorizontalSize(157),
                  text: "Masuk",
                  margin: getMargin(top: 48, bottom: 5),
                ),
                SizedBox(height: 10),
                Text("Belum punya akun?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPageScreen(),
                      ),
                    );
                  },
                  child: Text("Daftar disini"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
