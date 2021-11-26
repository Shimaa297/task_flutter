
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/cubit/cubit_states.dart';
import 'package:task_flutter/models/product_model.dart';
import 'package:task_flutter/sharedPreferences/dio_helper.dart';

class AppCubit extends Cubit<CubitStates> {

  AppCubit() : super(CubitInitialState());

  static AppCubit get(context)=> BlocProvider.of(context);

  ProductModel ? productModel;

  var currentIndex= 0;

  void getHomeData()
  {
    emit(LoadingHomeData());

    DioHelper.getData(
      url: 'https://flutter-test-api.herokuapp.com/',
    ).then((value){
      productModel = ProductModel.fromJson(value.data);
      //print(productModel!.title);
      print(value.data);
      // productModel!.forEach((element)
      // {
      //   favorites.addAll(
      //       {
      //         element.id : element.inFavorites,
      //       });
      // });
     // print(favorites.toString());
       print(productModel.toString());
      emit(SuccessHomeData());
    }).catchError((error){
      print(error.toString());
      emit(ErrorHomeData());
    });
  }

  void selectMenu(index) {
    currentIndex = index;
  }
}