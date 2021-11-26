abstract class CubitStates {}

class CubitInitialState extends CubitStates{}

class LoadingHomeData extends CubitStates{}

class SuccessHomeData extends CubitStates{
  late final SuccessHomeData model;
}

class ErrorHomeData extends CubitStates{}
