import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limerick_assignment/view/auth/widgets/common_page_body.dart';

import '../../../controller/components/app_theme/app_color.dart';
import '../../../controller/components/app_theme/text_style.dart';
import '../../../controller/components/utils/media_size.dart';
import '../../../controller/repositories/auth_api_helper.dart';
import '../widgets/auth_input_fields.dart';
import 'auth_navigator.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/loginPage';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final TextEditingController userEmailController = TextEditingController();
    final TextEditingController userPasswordController =
        TextEditingController();
    return Scaffold(
      body: commonBody(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: SizedBox(
                  width: fixedRatio(308),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: fixedRatio(70)),
                      Image.asset(
                        'asset/logo/logo_1.jpg',
                        height: fixedRatio(150),
                        width: fixedRatio(150),
                      ),
                      SizedBox(height: fixedRatio(10)),
                      Text(
                        'প্রবেশ করুন',
                        style: GoogleFonts.roboto(
                          fontSize: fixedRatio(25),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: fixedRatio(40)),
                      authInputField(
                        controller: userEmailController,
                        prefixIcon: Icons.email_outlined,
                        hintText: 'ইমেইল',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "ইমেল ঠিকানা লিখুন দয়া করে";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: fixedRatio(20)),
                      AuthPasswordField(
                        controller: userPasswordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "পাসওয়ার্ড লিখুন দয়া করে";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: fixedRatio(7)),
                      const LoginCheckBox(),
                      SizedBox(height: fixedRatio(30)),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                loginValidation(
                                  context: context,
                                  formKey: formKey,
                                  email: userEmailController.value.text,
                                  password: userPasswordController.value.text,
                                );
                              },
                              child: Container(
                                height: fixedRatio(60),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColor.buttonF75F55,
                                  borderRadius:
                                      BorderRadius.circular(fixedRatio(10)),
                                ),
                                child: Text(
                                  'সাইন ইন করুন',
                                  style: TStyle.roboto(
                                    whiteText: true,
                                    fontSize: fixedRatio(17),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: fixedRatio(30)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void loginValidation({
  required BuildContext context,
  required GlobalKey<FormState> formKey,
  required String email,
  required String password,
}) {
  debugPrint(email);
  debugPrint(password);
  AuthApiHelper authApiHelper = AuthApiHelper();
  if (formKey.currentState!.validate()) {
    authApiHelper.loginPostResponse(email: email, userPassword: password).then(
      (value) {
        Navigator.of(context).pushReplacementNamed(AuthNavigator.routeName);
      },
    );
  }
}
