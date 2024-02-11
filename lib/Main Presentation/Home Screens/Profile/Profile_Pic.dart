import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:prescribo/core/utils/image_constant.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200), // Make it a circle
            child: _image != null
                ? Image.file(
                    _image!,
                    height: 115,
                    width: 115,
                    fit: BoxFit.cover,
                  )
                : Lottie.asset(
                    'assets/animation/Profile_user.json',
                    height: 115,
                    width: 115,
                    fit: BoxFit.cover,
                  ),
          ),
          Positioned(
            right: -16,
            bottom: -5,
            child: SizedBox(
              height: 50,
              width: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: const Color(0xFFF5F6F9),
                ),
                onPressed: getImage,
                child: SvgPicture.asset(ImageConstant.imgCameraProfile),
              ),
            ),
          )
        ],
      ),
    );
  }
}
