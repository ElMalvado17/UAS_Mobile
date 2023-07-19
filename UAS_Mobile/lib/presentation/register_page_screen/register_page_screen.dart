// ignore_for_file: must_be_immutable, unused_field

import 'package:drian_s_application3/core/app_export.dart';
import 'package:drian_s_application3/presentation/beranda_page_screen/beranda_page_screen.dart';
import 'package:drian_s_application3/widgets/custom_button.dart';
import 'package:drian_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterPageScreen extends StatelessWidget {
  RegisterPageScreen({Key? key}) : super(key: key);

  TextEditingController fullnameController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Form Register",
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
                  controller: fullnameController,
                  hintText: "Nama Lengkap:",
                  margin: const EdgeInsets.only(left: 7, top: 23),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: phonenumberController,
                  hintText: "Nomer Hp:",
                  margin: const EdgeInsets.only(left: 7, top: 16),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: passwordController,
                  hintText: "Password:",
                  margin: const EdgeInsets.only(left: 7, top: 14),
                  textInputType: TextInputType.visiblePassword,
                  isObscureText: true,
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: confirmpasswordController,
                  hintText: "Confirm Password:",
                  margin: const EdgeInsets.only(left: 3, top: 14, right: 4),
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
                  text: "Daftar",
                  margin: getMargin(top: 48, bottom: 5),
                ),
                const SizedBox(height: 10),
                Text("Sudah punya akun?"),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
                  },
                  child: Text("Masuk Disini"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
