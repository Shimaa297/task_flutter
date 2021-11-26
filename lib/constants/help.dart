import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_flutter/constants/theme_style.dart';
import 'package:task_flutter/cubit/cubit_app.dart';
import 'package:task_flutter/screens/drinks_screen.dart';

Widget helpButton({
  required String text,
  IconData ?icon,
  required Function function,
  Color background = defaultColor,
  borderColor = defaultColor,
  textColor,
  double width = double.infinity,
  radius,
  elevation,
  fontSize= 15.0,
}) {
  return Container(
    width: width,
    height: 30,
    decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor)),
    child: MaterialButton(
      onPressed: (){function;},
      elevation: elevation,
      child: Text(
        text,
        style: subtitleTextStyle.copyWith(fontSize: fontSize),
      ),
    ),
  );
}

Widget helpImage(String image, double radius) {
  return image != null
      ? CachedNetworkImage(
    imageUrl: image,
    fit: BoxFit.cover,
    httpHeaders: {
      'Content-Type': 'application/json;charset=UTF-8',
      'Charset': 'utf-8'
    },
    imageBuilder: (
        ctx,
        image,
        ) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      );
    },
    placeholder: (_, __) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        // gradient: LinearGradient(
        //     begin: Alignment(-2, 0),
        //     end: Alignment(1, 0),
        //     colors: [Colors.white, Colors.green])
      ),
      // child: Padding(
      //   padding: const EdgeInsets.all(24.0),
      //   child:
      //   //Image.asset('assets/logo.png'),
      // ),
    ),
    errorWidget: (context, url, error) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.white,
        // gradient: LinearGradient(
        //     begin: Alignment(-2, 0),
        //     end: Alignment(1, 0),
        //     colors: [Colors.white, Colors.green]
        // )
      ),
      // child: Padding(
      //     padding: const EdgeInsets.all(24.0),
      //     child: Image.asset('assets/logo.png')),
    ),
  )
      : Container(
    decoration: BoxDecoration(
        color: ColorsApp.col,
        borderRadius: BorderRadius.circular(radius),
        gradient: LinearGradient(
            begin: Alignment(-2, 0),
            end: Alignment(1, 0),
            colors: [ColorsApp.primaryColor, Color(0xff412A44)])),
    // child: Padding(
    //   padding: const EdgeInsets.all(24.0),
    //   child: Image.asset('assets/logo.png'),
    // ),
  );
}

Widget balanceContainer({
  context,
  Color? color,
  required String text,
  required String image,
  required Function function,
  Color? shadow,
}) =>
    GestureDetector(
      onTap: () => function(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 2,
          shadowColor: Colors.blue[50],
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: SvgPicture.asset(
                    image,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .caption!.copyWith(color: ColorsApp.defTextColor),
                )
              ],
            ),
          ),
        ),
      ),
    );

Widget bottomBar(
    context, {
      required String image,
      Function? function,
      Color ?imageColor,
    }) =>
    Container(
      height: 80,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    color: imageColor,
                    width: 25,
                    height: 25,
                  ),
                ),
              )),
        ],
      ),
    );

void navigateTo(context, widget) =>
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => widget
        )
    );

int index = 0;
Widget defCircle(
    context, {
      required String text,
      required String image,
      Color background = Colors.black45,
      double? width,
    }) =>
    InkWell(
      onTap: ()
      {
        navigateTo(context, DrinksScreen());
        //AppCubit.get(context).selectMenu(index);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        //height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: background
      ),
                padding: EdgeInsets.all(20),
                child: Center(
                    child: Image.asset(
                      image,
                      height: 30,
                      width: 30,
                    )
                )
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text.toUpperCase(),
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );