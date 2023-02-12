import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:grab_application/component/background/bgGreen.dart';
import 'package:grab_application/component/colors/colors.constan.dart';
import 'package:grab_application/component/text/label.dart';

class AuthPhoneScreen extends StatefulWidget {
  const AuthPhoneScreen({super.key});

  @override
  State<AuthPhoneScreen> createState() => _AuthPhoneScreenState();
}

class _AuthPhoneScreenState extends State<AuthPhoneScreen> {
  final countryPicker = const FlCountryCodePicker();

  @override
  Widget build(BuildContext context) {
    return BgGreen(
      title: "เริ่มต้น",
      isShowTitleText: true,
      hidePreviousIcon: true,
      backGroundColor: COLOR_WHITE,
      navigate: Colors.grey,
      child: Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 0,
                  child: GestureDetector(
                    onTap: () async {
                      final code =
                          await countryPicker.showPicker(context: context);
                      if (code != null) print(code);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: COLOR_BLACK,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Label(
                        "+1",
                        color: COLOR_WHITE,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLines: 1,
                      decoration: InputDecoration(
                          hintText: "81 123 4567",
                          labelStyle: TextStyle(color: COLOR_GREEN)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
