class LoginModel{
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  LoginModel.formJson(Map<String,dynamic> json){
    hasError = json['hasError'];
    errors = json['errors'];
    messages = json['messages'];

      if((json['data']['student'] == null && json['data']['instructor'] == null) ){
        data = null;
      }
      else{
        data = Data.fromJson(json['data']);
      }


  }

}

class Data {
  Student? student;

  Data({this.student});

  Data.fromJson(Map<String, dynamic> json) {
    student = Student.fromJson(json['student']);
  }


}

class Student {
  String? studentID;
  String? studentJOBID;
  String? cITYID;
  String? rEGIONID;
  String? uNiversityID;
  String? studentUniqueid;
  String? studentName;
  String? studentDescription;
  String? studentStatus;
  String? studentPic;
  String? studentPhone;
  String? studentEmail;
  String? studentNationalid;
  String? studentBirthdate;
  String? studentAddress;
  String? studentTaxesid;
  String? studentTradeid;
  String? studentPoints;
  String? studentAccesstoken;
  String? studentAddTime;
  String? studentLoginTime;
  String? studentVcode;
  String? studentVcodeTime;



  Student.fromJson(Map<String, dynamic> json) {
    studentID = json['STUDENTID'];
    studentJOBID = json['STUDENTJOBID'];
    cITYID = json['CITYID'];
    rEGIONID = json['REGIONID'];
    uNiversityID = json['UNIVERSITYID'];
    studentUniqueid = json['student_uniqueid'];
    studentName = json['student_fullname'];
    studentDescription = json['student_description'];
    studentStatus = json['student_status'];
    studentPic = json['student_profilepicture'];
    studentPhone = json['student_phone'];
    studentEmail = json['student_email'];
    studentNationalid = json['student_nationalid'];
    studentBirthdate = json['student_birthdate'];
    studentAddress = json['student_address'];
    studentTaxesid = json['student_taxesid'];
    studentTradeid = json['student_tradeid'];
    studentAccesstoken = json['student_accesstoken'];
    studentAddTime = json['student_add_time'];
    studentLoginTime = json['student_login_time'];
    studentVcode = json['student_vcode'];
    studentVcodeTime = json['student_vcode_time'];
  }


}