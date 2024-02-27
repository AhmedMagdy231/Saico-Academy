class CountriesModel {

  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  CountriesModel.formJson(Map<String,dynamic> json){
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
  List<Countries>? countries;
  List<String> countriesList = [];

  Data({this.countries});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['countries'] != null) {
      countries = <Countries>[];
      json['countries'].forEach((v) {
        countriesList.add(v['label']);
        countries!.add(new Countries.fromJson(v));
      });


    }
  }



}

class Countries {
  String? label;
  String? value;



  Countries.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }


}


