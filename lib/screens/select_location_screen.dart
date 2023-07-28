import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/models/area_model.dart';
import 'package:online_groceries_app/screens/login_screen.dart';
import 'package:online_groceries_app/widgets/custom_btn.dart';

import '../models/zone_model.dart';
import '../widgets/custom_dropdown.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});
  static String id = "SelectLocation";

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  String? selectedAreaValue;
  String? selectedZoneValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 221,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(Assets.imagesBackgroundOne),
                      fit: BoxFit.fill,
                      opacity: 0.1),
                  color: Colors.white.withOpacity(0.1),
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 30.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: SvgPicture.asset(Assets.imagesIllustration),
              ),
            ],
          ),
          const SizedBox(height: 65),
          const Column(
            children: [
              Text(
                'Select Your Location',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 26,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Swithch on your location to stay in tune with\nwhat’s happening in your area\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          Column(
            children: [
              CustomDropDownList(
                title: "Your Area",
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: const Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF181725),
                    ),
                  ),
                  items: areas
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedAreaValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedAreaValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    height: 70,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
              CustomDropDownList(
                title: "Your Zone",
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: const Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF181725),
                    ),
                  ),
                  items: zones
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedZoneValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedZoneValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    height: 70,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomBtn(
              title: "Submit",
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
