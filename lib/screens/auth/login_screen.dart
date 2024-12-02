import 'package:athathi/core/utils/constants/colors_const_app.dart';
import 'package:athathi/core/utils/constants/image_const_app.dart';
import 'package:athathi/export.dart';
import 'package:athathi/core/utils/constants/ui_const.dart';
import 'package:athathi/screens/widgets/custom_elevated_button.dart';
import 'package:athathi/screens/widgets/custom_outlined_button.dart';
import 'package:athathi/screens/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _mobileC = TextEditingController();
  final _countryCodeC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: px24,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              textDirection: TextDirection.ltr,
              spacing: 12.0,
              children: [
                gap16,
                Padding(
                  padding: p4,
                  child: Text(
                    "Lets Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColorConst.scrim,
                      fontSize: 28,
                    ),
                  ),
                ),
                Padding(
                  padding: p4,
                  child: Text(
                    "dvcsd daccccc adsc as sd dddddddddddd",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: AppColorConst.scrim,
                      fontSize: 16,
                    ),
                  ),
                ),
                gap40,
                Text("Mobile Number"),
                Flex(
                  direction: Axis.horizontal,
                  spacing: 8.0,
                  children: [
                    CustomTextField(
                      hint: "+965",
                      title: "",
                      btnWidth: 85,
                      flex: 1,
                      controller: _countryCodeC,
                      onTapped: () {},
                    ),
                    CustomTextField(
                      hint: "Enter mobile",
                      title: "",
                      flex: 5,
                      controller: _mobileC,
                      onTapped: () {},
                    ),
                  ],
                ),
                gap30,
                CustomElevatedButton(
                  btnName: "Continue",
                  onPressed: onContinue,
                ),
                gap24,
                CustomOutlinedButton(
                  btnName: 'Continue as Guest',
                  btnPressed: onContinueAsGuest,
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: 'By continuing, I agree to the '),
                        TextSpan(
                          text: 'Terms of Use',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColorConst.primary,
                          ),
                        ),
                        TextSpan(text: ' & '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColorConst.primary,
                          ),
                        ),
                      ],
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onContinue() {
    Get.toNamed(AppRoutes.profileSetupScreen);
  }

  void onContinueAsGuest() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
