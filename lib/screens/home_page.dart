import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_flutter/constants/help.dart';
import 'package:task_flutter/constants/theme_style.dart';
import 'package:task_flutter/screens/menu.dart';


class HomePage extends StatelessWidget {
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
              top: 400,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(200), topLeft: Radius.circular(400))
                ),),
            ),
            Positioned(
              top: 360,
              left: 60,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 360,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 3,
                                  color: ColorsApp.secColor)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('React apply',
                                      style: Theme.of(context).textTheme.caption,),
                                    CircleAvatar(
                                      radius: 15,
                                      child: Icon(Icons.emoji_emotions_outlined),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage('assets/images/food1.png'),
                                  ),
                                ),
                                Text('React apply',
                                  style: Theme.of(context).textTheme.caption,),
                                Text('20% Discount ',
                                    style: subtitleTextStyle),
                                Text('In Salads and salimon',
                                    style: bodyTextStyle),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Container(
                              width: 150,
                            //  height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: ColorsApp.col,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: AssetImage('assets/images/food1.png'),
                                      ),
                                    ),
                                    Text('Tendertion pineaapple',
                                        style: bodyTextStyle),
                                    Text('\$125.00',
                                        style: bodyTextStyle),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: ColorsApp.yellowColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: AssetImage('assets/images/food1.png'),
                                      ),
                                    ),
                                    Text('Tendertion pineaapple',
                                        style: bodyTextStyle),
                                    Text('\$125.00',
                                        style: bodyTextStyle),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Best Meals',
                    style: subtitleTextStyle,
                  ),
                  Container(
                    width: double.infinity,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                         //   width: MediaQuery.of(context).size.width - 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorsApp.switchColor,
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/food1.png',),
                                SizedBox(width: 20,),
                                Expanded(child: Text('Enjoy delicious chicken For your family',style: bodyTextStyle.copyWith(color: Colors.white),))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: SvgPicture.asset(
            'assets/images/1.svg',
            width: 25,
            height: 25,
          ),
          backgroundColor: ColorsApp.col,
          onPressed: ()
          {
            navigateTo(context, MenuScreen());
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bottomBar(
                      context,
                      image: 'assets/images/home.svg',
                      function: (){}
                  ),

                  bottomBar(
                      context,
                      image: 'assets/images/map.svg',
                      function: (){}
                  ),
                  bottomBar(
                      context,
                      image: 'assets/images/heart.svg',
                      function: (){}
                  ),
                  bottomBar(
                      context,
                      image: 'assets/images/wallet.svg',
                      function: (){}
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

