
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_practice/cubit/app_cubit.dart';
import 'package:let_practice/misc/colors.dart';
import 'package:let_practice/widgets/app.dart';
import 'package:let_practice/widgets/app_text.dart';
import 'package:let_practice/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(

        scrollDirection: Axis.vertical,
        itemCount: images.length,
        //to keep tracks of the index
        itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'img/' + images[index]
                ),
                // To cover the whole screen
                fit:  BoxFit.cover
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: 150,
                left: 20,
                right: 20,
              ),
              child: Row(
                // to create space in between the two columns appropriately
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: 'Trips'),
                      AppText(text: 'Mountain', size: 30,),
                      SizedBox(height: 20,),
                      Container(
                        // to specifically mention the width
                        width: 250,
                        child: AppText(
                          text: 'Mountain hikes give you an incredible sense of freedom along with endurance test',
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 40,),
                      GestureDetector(
                        onTap: (){
                          //hold cubit so that it can be accessed
                          BlocProvider.of<AppCubits>(context).getData();
                        },
                      child: Container(
                        width: 200,
                        child:Row(
                          children: [
                            ResponsiveButton(width: 120,),
                          ],
                        ),
                      ),
                      ),
                    ],
                  ),
                  Column(

                    // to order it automatically
                    children: List.generate(3, (indexDots) {

                      return Container(
                        width: 8,
                        margin: EdgeInsets.only(bottom: 2),
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
