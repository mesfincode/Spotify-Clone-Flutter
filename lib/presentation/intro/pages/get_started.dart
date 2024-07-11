import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone_fulutter/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone_fulutter/core/configs/assets/app_images.dart';
import 'package:spotify_clone_fulutter/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone_fulutter/core/configs/theme/app_colors.dart';
import 'package:spotify_clone_fulutter/presentation/choose_mode/page/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppImages.introBG))),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ) ,
           Padding(
             padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
             child: Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(AppVectors.logo)),
                  Spacer(),
                  Text(
                    "Enjoy Listening To Music",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text(
                    "Listen to the best hits of all the time, plenty of features in here, you can listen offline you can set time out and man more",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BasicAppButton(onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const ChooseModePage()))
                  }, title: "Get Started",height: 60,)
                ],
              ),
           ),
          
        ],
      ),
    );
  }
}
