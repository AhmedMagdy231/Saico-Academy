class ProfileModel {
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  ProfileModel.formJson(Map<String,dynamic> json){
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
  Student? student;

  Data({this.student});

  Data.fromJson(Map<String, dynamic> json) {
    student =
    json['student'] != null ? new Student.fromJson(json['student']) : null;
  }


}

class Student {
  String? sTUDENTID;
  String? sTUDENTAFID;
  String? studentUniqueid;
  String? studentFullname;
  String? studentType;
  String? studentEmail;
  String? studentPhone;
  String? studentCertificateName;
  String? studentTaxesId;
  String? studentTradingId;
  String? studentSales;
  String? studentSalesReturns;
  String? studentSalesPaid;
  String? studentSalesWithdrawed;
  String? studentPurchases;
  String? studentPurchasesReturns;
  String? studentPurchasesPaid;
  String? studentPurchasesWithdrawed;
  String? studentDebit;
  String? studentCredit;
  String? studentBalance;
  String? studentDebitInitial;
  String? studentCreditInitial;
  String? studentBalanceInitial;
  String? studentUsername;
  String? studentPassword;
  String? studentGender;
  String? studentOrganization;
  String? studentDescription;
  String? studentCountry;
  String? studentOrders;
  String? studentAddTime;
  String? studentLoginTime;
  String? studentVerified;
  String? studentStatus;
  String? studentAssessed;
  String? studentAssessedNotes;
  String? studentForcePassword;
  String? studentProfilepicture;
  String? studentCoverpicture;
  String? studentWebsite;
  dynamic? studentRememberMeKey;
  dynamic? studentRememberMeTime;
  String? studentIp;
  String? studentLip;
  String? studentMylang;
  String? studentMycountry;
  String? studentFacebookConnected;
  String? studentFacebookId;
  String? studentVcode;
  String? studentVcodeTime;
  String? studentResetVcode;
  String? studentResetVcodeTime;
  String? studentGoogleConnected;
  String? studentGoogleId;
  String? studentCity;
  String? studentStreet;
  String? studentBuilding;
  String? studentPhone2;
  String? studentAddressInfo;
  String? studentCode;
  String? studentPoints;
  String? studentZoomConnected;
  String? studentZoomId;
  String? studentZoomEmail;
  String? studentZoomPersonalMeetingUrl;
  String? studentZoomJid;
  String? studentZoomAccountId;
  String? studentZoomAccessToken;
  String? studentZoomRefreshToken;
  String? studentWhatsappEnabled;
  String? studentWhatsappGroupName;
  String? studentWhatsappNumber;
  String? studentTimezone;
  String? studentIdcardFilename;
  String? studentAccesstoken;
  String? studentFirebaseAccesstoken;



  Student.fromJson(Map<String, dynamic> json) {
    sTUDENTID = json['STUDENTID'];
    sTUDENTAFID = json['STUDENTAFID'];
    studentUniqueid = json['student_uniqueid'];
    studentFullname = json['student_fullname'];
    studentType = json['student_type'];
    studentEmail = json['student_email'];
    studentPhone = json['student_phone'];
    studentCertificateName = json['student_certificate_name'];
    studentTaxesId = json['student_taxes_id'];
    studentTradingId = json['student_trading_id'];
    studentSales = json['student_sales'];
    studentSalesReturns = json['student_sales_returns'];
    studentSalesPaid = json['student_sales_paid'];
    studentSalesWithdrawed = json['student_sales_withdrawed'];
    studentPurchases = json['student_purchases'];
    studentPurchasesReturns = json['student_purchases_returns'];
    studentPurchasesPaid = json['student_purchases_paid'];
    studentPurchasesWithdrawed = json['student_purchases_withdrawed'];
    studentDebit = json['student_debit'];
    studentCredit = json['student_credit'];
    studentBalance = json['student_balance'];
    studentDebitInitial = json['student_debit_initial'];
    studentCreditInitial = json['student_credit_initial'];
    studentBalanceInitial = json['student_balance_initial'];
    studentUsername = json['student_username'];
    studentPassword = json['student_password'];
    studentGender = json['student_gender'];
    studentOrganization = json['student_organization'];
    studentDescription = json['student_description'];
    studentCountry = json['student_country'];
    studentOrders = json['student_orders'];
    studentAddTime = json['student_add_time'];
    studentLoginTime = json['student_login_time'];
    studentVerified = json['student_verified'];
    studentStatus = json['student_status'];
    studentAssessed = json['student_assessed'];
    studentAssessedNotes = json['student_assessed_notes'];
    studentForcePassword = json['student_force_password'];
    studentProfilepicture = json['student_profilepicture'];
    studentCoverpicture = json['student_coverpicture'];
    studentWebsite = json['student_website'];
    studentRememberMeKey = json['student_remember_me_key'];
    studentRememberMeTime = json['student_remember_me_time'];
    studentIp = json['student_ip'];
    studentLip = json['student_lip'];
    studentMylang = json['student_mylang'];
    studentMycountry = json['student_mycountry'];
    studentFacebookConnected = json['student_facebook_connected'];
    studentFacebookId = json['student_facebook_id'];
    studentVcode = json['student_vcode'];
    studentVcodeTime = json['student_vcode_time'];
    studentResetVcode = json['student_reset_vcode'];
    studentResetVcodeTime = json['student_reset_vcode_time'];
    studentGoogleConnected = json['student_google_connected'];
    studentGoogleId = json['student_google_id'];
    studentCity = json['student_city'];
    studentStreet = json['student_street'];
    studentBuilding = json['student_building'];
    studentPhone2 = json['student_phone_2'];
    studentAddressInfo = json['student_address_info'];
    studentCode = json['student_code'];
    studentPoints = json['student_points'];
    studentZoomConnected = json['student_zoom_connected'];
    studentZoomId = json['student_zoom_id'];
    studentZoomEmail = json['student_zoom_email'];
    studentZoomPersonalMeetingUrl = json['student_zoom_personal_meeting_url'];
    studentZoomJid = json['student_zoom_jid'];
    studentZoomAccountId = json['student_zoom_account_id'];
    studentZoomAccessToken = json['student_zoom_access_token'];
    studentZoomRefreshToken = json['student_zoom_refresh_token'];
    studentWhatsappEnabled = json['student_whatsapp_enabled'];
    studentWhatsappGroupName = json['student_whatsapp_group_name'];
    studentWhatsappNumber = json['student_whatsapp_number'];
    studentTimezone = json['student_timezone'];
    studentIdcardFilename = json['student_idcard_filename'];
    studentAccesstoken = json['student_accesstoken'];
    studentFirebaseAccesstoken = json['student_firebase_accesstoken'];
  }


}
