import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/constants/help.dart';
import 'package:task_flutter/constants/theme_style.dart';
import 'package:task_flutter/cubit/cubit_app.dart';
import 'package:task_flutter/cubit/cubit_states.dart';
import 'package:task_flutter/models/product_model.dart';

class DrinksScreen extends StatelessWidget {
  // const DrinksScreen({Key? key}) : super(key: key);
  ProductModel ? productModel;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, CubitStates>(
      listener: (context, state)
      {
        if(AppCubit.get(context).productModel !=null)
          print('Go');
      },
      builder: (context , state)
      {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: ()
                            {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios)
                        ),
                        Text('Drinks🍹', style: titleTextStyle,),
                        IconButton(
                            onPressed: ()
                            {},
                            icon: Icon(Icons.arrow_back_ios, color: Colors.white,)
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Maybe you would like to search🥺',
                        style: bodyTextStyle,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          5,
                              (index) =>  balanceContainer(
                              context: context,
                              text: 'pizza',
                              function: ()
                              {
                                // setState(() {
                                //   currentIndex = 0;
                                // });
                              },
                              image: 'assets/images/pizza.svg',
                              color: Colors.white
                            // shadow: currentIndex == 0 ? Colors.grey: Colors.transparent,
                          ),),
                      ),
                    ),
                    const SizedBox(height: 20,),
                     if(AppCubit.get(context).productModel !=null)
                      buildProductGrid(AppCubit.get(context).productModel!, context)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
Widget buildProductGrid(ProductModel productModel , context)
{
  return GridView.count(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    mainAxisSpacing: 5.0,
    crossAxisSpacing: 5.0,
    childAspectRatio: 1.2 / 1.3,
    children: List.generate(
        productModel.title!.length,
            (index) => cardProduct(AppCubit.get(context).productModel!, context)
    ),
  );
}
Widget cardProduct(ProductModel model,context)
{
 return Card(
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 5,
    shadowColor: ColorsApp.defTextColor,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Image.asset('assets/images/non_fav.png', height: 20, width: 20,),
          ),
          Expanded(
            child: Center(
              child: Container(
                  height: 80,
                  width: 40,
                  child: helpImage('${model.avatar}', 0.0)
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '${model.title}',
            style: Theme.of(context)
                .textTheme
                .caption!.copyWith(color: ColorsApp.defTextColor, height: 3.0),
          ),
          Text(
            '${model.subTitle}',
            style: Theme.of(context)
                .textTheme
                .caption!.copyWith(color: ColorsApp.defTextColor, height: 1.5),
          ),
          Text(
              '${model.price}',
              style: subtitleTextStyle
          ),
        ],
      ),
    ),
  );
}