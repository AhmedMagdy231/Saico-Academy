class LoginModel{
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;
  bool? isStudent;

  LoginModel.formJson(Map<String,dynamic> json){
    hasError = json['hasError'];
    errors = json['errors'];
    messages = json['messages'];

    if( json['data'] is Map){
      data = Data.fromJson(json['data']);

      if(json['data']['student'] != null){
        this.isStudent = true;
      }
      else
      {
        this.isStudent = false;
      }


    }
    else{
      data = null;
    }


  }

}

class Data {
  Student? student;
  Instructor? instructor;

  Data({this.student});

  Data.fromJson(Map<String, dynamic> json) {

    student = json['student'] != null? Student.fromJson(json['student']) : null;
    instructor = json['instructor'] != null? Instructor.fromJson(json['instructor']) : null;
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

class Instructor {
  String? iNSTRUCTORID;
  String? instructorName;
  String? instructorDepartment;
  String? instructorStatus;
  String? instructorPriority;
  String? instructorEmail;
  String? instructorDescription;
  String? instructorCountry;
  String? instructorPic;
  String? instructorWebsite;
  String? instructorPosition;
  String? instructorQuote;
  String? instructorFeatured;
  String? instructorCvfilename;
  String? instructorMylang;
  String? instructorUsername;
  String? instructorPassword;
  String? instructorLoginTime;
  String? instructorLip;
  String? instructorRememberMeKey;
  String? instructorRememberMeTime;
  String? instructorReviewsTotal;
  String? instructorReviewsAvg;
  String? instructorZoomConnected;
  String? instructorZoomId;
  String? instructorZoomEmail;
  String? instructorZoomPersonalMeetingUrl;
  String? instructorZoomJid;
  String? instructorZoomAccountId;
  String? instructorZoomAccessToken;
  String? instructorZoomRefreshToken;
  String? instructorWhatsappNumber;
  String? instructorWhatsappGroupName;
  String? instructorWhatsappEnabled;
  String? instructorTimezone;
  String? instructorDebitInitial;
  String? instructorCreditInitial;
  String? instructorBalanceInitial;
  String? instructorSales;
  String? instructorSalesPaid;
  String? instructorDebit;
  String? instructorCredit;
  String? instructorBalance;
  String? instructorTokens;
  String? instructorAccesstoken;
  String? instructorFirebaseAccesstoken;



  Instructor.fromJson(Map<String, dynamic> json) {
    iNSTRUCTORID = json['INSTRUCTORID'];
    instructorName = json['instructor_name'];
    instructorDepartment = json['instructor_department'];
    instructorStatus = json['instructor_status'];
    instructorPriority = json['instructor_priority'];
    instructorEmail = json['instructor_email'];
    instructorDescription = json['instructor_description'];
    instructorCountry = json['instructor_country'];
    instructorPic = json['instructor_pic'];
    instructorWebsite = json['instructor_website'];
    instructorPosition = json['instructor_position'];
    instructorQuote = json['instructor_quote'];
    instructorFeatured = json['instructor_featured'];
    instructorCvfilename = json['instructor_cvfilename'];
    instructorMylang = json['instructor_mylang'];
    instructorUsername = json['instructor_username'];
    instructorPassword = json['instructor_password'];
    instructorLoginTime = json['instructor_login_time'];
    instructorLip = json['instructor_lip'];
    instructorRememberMeKey = json['instructor_remember_me_key'];
    instructorRememberMeTime = json['instructor_remember_me_time'];
    instructorReviewsTotal = json['instructor_reviews_total'];
    instructorReviewsAvg = json['instructor_reviews_avg'];
    instructorZoomConnected = json['instructor_zoom_connected'];
    instructorZoomId = json['instructor_zoom_id'];
    instructorZoomEmail = json['instructor_zoom_email'];
    instructorZoomPersonalMeetingUrl =
    json['instructor_zoom_personal_meeting_url'];
    instructorZoomJid = json['instructor_zoom_jid'];
    instructorZoomAccountId = json['instructor_zoom_account_id'];
    instructorZoomAccessToken = json['instructor_zoom_access_token'];
    instructorZoomRefreshToken = json['instructor_zoom_refresh_token'];
    instructorWhatsappNumber = json['instructor_whatsapp_number'];
    instructorWhatsappGroupName = json['instructor_whatsapp_group_name'];
    instructorWhatsappEnabled = json['instructor_whatsapp_enabled'];
    instructorTimezone = json['instructor_timezone'];
    instructorDebitInitial = json['instructor_debit_initial'];
    instructorCreditInitial = json['instructor_credit_initial'];
    instructorBalanceInitial = json['instructor_balance_initial'];
    instructorSales = json['instructor_sales'];
    instructorSalesPaid = json['instructor_sales_paid'];
    instructorDebit = json['instructor_debit'];
    instructorCredit = json['instructor_credit'];
    instructorBalance = json['instructor_balance'];
    instructorTokens = json['instructor_tokens'];
    instructorAccesstoken = json['instructor_accesstoken'];
    instructorFirebaseAccesstoken = json['instructor_firebase_accesstoken'];
  }

}