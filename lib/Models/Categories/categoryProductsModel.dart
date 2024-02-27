class CategoryModel {
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  CategoryModel.formJson(Map<String,dynamic> json){
    hasError = json['hasError'];
    errors = json['errors'];
    messages = json['messages'];
    if(json['data'] is Map)
    {
      data = Data.fromJson(json['data']);
    }
    else
    {
      data = null;
    }

  }

}






class Data {
  List<ProductsCats>? productsCats;



  Data.fromJson(Map<String, dynamic> json) {
    if (json['products_cats'] != null) {
      productsCats = <ProductsCats>[];
      json['products_cats'].forEach((v) {
        productsCats!.add(new ProductsCats.fromJson(v));
      });
    }
  }

}

class ProductsCats {
  String? pRODUCTSCATID;
  String? pARENTCATID;
  String? productscatTitle;
  String? productscatDescription;
  String? productscatPic;
  String? productscatActive;
  String? productscatPriority;
  String? productscatProducts;



  ProductsCats.fromJson(Map<String, dynamic> json) {
    pRODUCTSCATID = json['PRODUCTSCATID'];
    pARENTCATID = json['PARENTCATID'];
    productscatTitle = json['productscat_title'];
    productscatDescription = json['productscat_description'];
    productscatPic = json['productscat_pic'];
    productscatActive = json['productscat_active'];
    productscatPriority = json['productscat_priority'];
    productscatProducts = json['productscat_products'];
  }


}


