

class TimeZoneModel {

  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  TimeZoneModel.formJson(Map<String,dynamic> json){
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
  List<TimeZones>? timeZones;

  List<String> timeZoneList = [];

  Data({this.timeZones});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['time_zones'] != null) {
      timeZones = <TimeZones>[];
      json['time_zones'].forEach((v) {
        timeZoneList.add(v['label']);
        timeZones!.add(new TimeZones.fromJson(v));
      });
    }
  }


}

class TimeZones {
  String? label;
  String? value;

  TimeZones({this.label, this.value});

  TimeZones.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }


}
