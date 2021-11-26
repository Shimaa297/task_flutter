import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_flutter/constants/help.dart';
import 'package:task_flutter/constants/theme_style.dart';
import 'package:task_flutter/cubit/cubit_app.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsApp.defTextColor,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/photo.png')
                        ),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(width: 30,),
                  helpButton(
                      width: 70,
                      text: '500',
                      function: () {},
                      background: ColorsApp.secColor,
                      radius: 10.0,
                      textColor: Colors.white,
                      borderColor: ColorsApp.secColor
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    'assets/images/notification.svg',
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 20,),
                  SvgPicture.asset(
                    'assets/images/share.svg',
                    width: 25,
                    height: 25,
                  ),

                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello, Donia',
                        style: titleTextStyle.copyWith(color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        height:5,
                        width: 100,
                        color: ColorsApp.secColor,
                      ),
                      Text('Earn points with your purchases',
                        style: bodyTextStyle.copyWith(color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Group 7.svg',
                        ),
                        SvgPicture.asset(
                          'assets/images/Group 6.svg',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 320,
              left: 20,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: ColorsApp.secColor,
                  ),
                  SizedBox(width: 10,),
                  Text('Of the day',
                    style: bodyTextStyle.copyWith(color: ColorsApp.secColor,),
                  ),
                  SizedBox(width: 20,),
                  Text('Of the day',
                    style: bodyTextStyle.copyWith(color: Colors.white,),
                  ),
                  SizedBox(width: 20,),
                  Text('Of the day',
                    style: bodyTextStyle.copyWith(color: Colors.white,),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 180,
              left: 0,
              right: 0,
              child:  Container(
                margin: EdgeInsets.only(top: 200),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                  color: Color(0xffEAECF0),
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Our Menu', style: titleTextStyle,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        defCircle(
                          context,
                          text: 'DRINKS',
                          background: AppCubit.get(context).currentIndex == 0 ? ColorsApp.col : Colors.white,
                          image: 'assets/images/drink.png',
                        ),
                        defCircle(
                          context,
                          text: 'COFFEE',
                          background: AppCubit.get(context).currentIndex == 1 ? ColorsApp.col : Colors.white,
                          image: 'assets/images/cofee.png',
                        ),
                        defCircle(
                          context,
                          text: 'EGGS',
                         background: AppCubit.get(context).currentIndex == 2 ? ColorsApp.col : Colors.white,
                          image: 'assets/images/breakfast.png',
                        ),
                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        defCircle(
                          context,
                          text: 'MEATS',
                          background: AppCubit.get(context).currentIndex == 3 ? ColorsApp.col : Colors.white,
                          image: 'assets/images/meat.png',
                        ),
                        defCircle(
                          context,
                          text: 'SALADS',
                          background: AppCubit.get(context).currentIndex == 4 ? ColorsApp.col : Colors.white,
                          image: 'assets/images/outline.png',
                        ),
                        defCircle(
                          context,
                          text: 'SOUPS',
                          background: AppCubit.get(context).currentIndex == 5 ? ColorsApp.col : Colors.white,
                          image: 'assets/images/soup.png',
                        ),
                      ],
                    ),
                  ]
              ),
            ),
                  )]
        ),
      ),
    );
  }
}
