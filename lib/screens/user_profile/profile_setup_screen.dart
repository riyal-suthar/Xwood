import 'package:athathi/core/utils/constants/colors_const_app.dart';
import 'package:athathi/export.dart';
import 'package:athathi/screens/widgets/custom_elevated_button.dart';
import 'package:athathi/screens/widgets/custom_text_field.dart';

class ProfileSetupScreen extends StatelessWidget {
  ProfileSetupScreen({super.key});

  final _profileSetupKey = GlobalKey<FormState>();
  final TextEditingController _nameC = TextEditingController();
  final TextEditingController _emailC = TextEditingController();
  final TextEditingController _mobileNumberC = TextEditingController();
  final TextEditingController _contryC = TextEditingController();
  final TextEditingController _cityC = TextEditingController();
  final TextEditingController _areaC = TextEditingController();
  final TextEditingController _steetNoC = TextEditingController();
  final TextEditingController _avenueC = TextEditingController();
  final TextEditingController _buildingNoC = TextEditingController();
  final TextEditingController _flooreC = TextEditingController();
  final TextEditingController _flatC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: p24,
          child: Form(
            key: _profileSetupKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Profile Setup",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColorConst.scrim,
                  ),
                ),
                Text(
                  "Complete your profile to access all the features",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: AppColorConst.scrim,
                  ),
                ),
                gap30,
                CustomTextField(
                  controller: _nameC,
                  title: "Full Name",
                  hint: "Enter Name",
                ),
                CustomTextField(
                  controller: _emailC,
                  title: "Email",
                  hint: "Enter Email",
                ),
                CustomTextField(
                  controller: _mobileNumberC,
                  title: "Mobile Number",
                  hint: "12345 67890",
                ),
                CustomTextField(controller: _contryC, title: "Governate"),
                CustomTextField(controller: _cityC, title: "City"),
                CustomTextField(controller: _areaC, title: "Area"),
                CustomTextField(controller: _steetNoC, title: "Street No"),
                CustomTextField(controller: _avenueC, title: "Avenue"),
                CustomTextField(controller: _buildingNoC, title: "Building No"),
                CustomTextField(controller: _flooreC, title: "Floor"),
                CustomTextField(controller: _flatC, title: "Flat"),
                gap30,
                CustomElevatedButton(btnName: "Submit", onPressed: onSubmit),
                gap6,
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSubmit() {
    if (_profileSetupKey.currentState!.validate()) {
      // navigate to homepage
      Get.toNamed(AppRoutes.bottomNavBarScreen);
    }
  }
}
