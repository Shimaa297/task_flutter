class ProductModel {
  String ?title;
  String ?subTitle;
  String ?price;
  bool ?isFavourite;
  String ?avatar;

  ProductModel(
      {this.title, this.subTitle, this.price, this.isFavourite, this.avatar});

  ProductModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['subTitle'];
    price = json['price'];
    isFavourite = json['isFavourite'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subTitle'] = this.subTitle;
    data['price'] = this.price;
    data['isFavourite'] = this.isFavourite;
    data['avatar'] = this.avatar;
    return data;
  }
}