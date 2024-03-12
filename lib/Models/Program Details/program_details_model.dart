class ProgramDetailsModel {
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  ProgramDetailsModel.formJson(Map<String, dynamic> json){
    hasError = json['hasError'];
    errors = json['errors'];
    messages = json['messages'];
    if (json['data'] is Map) {
      data = Data.fromJson(json['data']);

    }
    else {
      data = null;
    }
  }
}

class Data {
  Product? product;
  List<ProductPosts> productPosts = [];
  List<String> imageSlider = [];

  List<Instructors>? instructors;
  List<ProductsReviews>? productsReviews;



  Data.fromJson(Map<String, dynamic> json) {
    product = json['product'] != null ? new Product.fromJson(json['product']) : null;



    if (json['products_posts'] != null) {

      json['products_posts'].forEach((element){
        productPosts.add(ProductPosts.fromJson(element));
        imageSlider.add(element['post_filename']);


      });


    }

    if (json['instructors'] != null) {
      instructors = <Instructors>[];
      json['instructors'].forEach((v) {
        instructors!.add(new Instructors.fromJson(v));
      });
    }

    if (json['products_reviews'] != null) {
      productsReviews = <ProductsReviews>[];
      json['products_reviews'].forEach((v) {
        productsReviews!.add(new ProductsReviews.fromJson(v));
      });
    }

  

  }


}

class Product {
  String? pRODUCTID;
  String? pRODUCTSCATID;
  String? pROPOSTID;
  String? productPn;
  String? productName;
  String? productActive;
  String? productNew;
  String? productSale;
  String? productType;
  String? productAssessment;
  String? productGroup;
  String? productTokens;
  String? productPrice;
  String? productOrderQty1;
  String? productOrderDiscount1;
  String? productOrderQty2;
  String? productOrderDiscount2;
  String? productOrderQty3;
  String? productOrderDiscount3;
  String? productSessions;
  String? productSessionsPriceMax;
  String? productSessionsPriceMin;
  String? productExamAuto;
  String? productExamId;
  String? productRestrictChapters;
  String? productSessionsMax;
  String? productDescription;
  String? productNotes;
  String? productReviewsTotal;
  String? productReviewsAvg;
  String? productTermFilename;
  String? productIntroFilename;
  String? productAdvantagesEnabled;
  String? productAdvantages;
  String? productGoalsEnabled;
  String? productGoals;
  String? productFormatEnabled;
  String? productFormat;
  String? productIdcardEnabled;
  String? productIdcardFilename;
  String? productIdcardDemoFilename;
  String? productIdcardNameX;
  String? productIdcardNameY;
  String? productIdcardNameColor;
  String? productIdcardNameFsize;
  String? productIdcardNameWidth;
  String? productIdcardBarcodeEnabled;
  String? productIdcardBarcodeX;
  String? productIdcardBarcodeY;
  String? productIdcardBarcodeWidth;
  String? productIdcardBarcodeHeight;
  String? productIdcardDateEnabled;
  String? productIdcardDateX;
  String? productIdcardDateY;
  String? productIdcardDateColor;
  String? productIdcardDateFsize;
  String? productCertificateEnabled;
  String? productCertificateFilename;
  String? productCertificateDemoFilename;
  String? productCertificateNameX;
  String? productCertificateNameY;
  String? productCertificateNameFsize;
  String? productCertificateNameColor;
  String? productCertificateNameWidth;
  String? productCertificateQrEnabled;
  String? productCertificateQrWidth;
  String? productCertificateQrX;
  String? productCertificateQrY;
  String? productCertificateDateEnabled;
  String? productCertificateDateX;
  String? productCertificateDateY;
  String? productCertificateDateColor;
  String? productCertificateInstructorEnabled;
  String? productCertificateInstructorX;
  String? productCertificateInstructorY;
  String? productCertificateInstructorFsize;
  String? productCertificateInstructorColor;
  String? productCertificateStudidEnabled;
  String? productCertificateStudidX;
  String? productCertificateStudidY;
  String? productCertificateStudidFsize;
  String? productCertificateStudidColor;
  String? postFilename;



  Product.fromJson(Map<String, dynamic> json) {
    pRODUCTID = json['PRODUCTID'];
    pRODUCTSCATID = json['PRODUCTSCATID'];
    pROPOSTID = json['PROPOSTID'];
    productPn = json['product_pn'];
    productName = json['product_name'];
    productActive = json['product_active'];
    productNew = json['product_new'];
    productSale = json['product_sale'];
    productType = json['product_type'];
    productAssessment = json['product_assessment'];
    productGroup = json['product_group'];
    productTokens = json['product_tokens'];
    productPrice = json['product_price'];
    productOrderQty1 = json['product_order_qty_1'];
    productOrderDiscount1 = json['product_order_discount_1'];
    productOrderQty2 = json['product_order_qty_2'];
    productOrderDiscount2 = json['product_order_discount_2'];
    productOrderQty3 = json['product_order_qty_3'];
    productOrderDiscount3 = json['product_order_discount_3'];
    productSessions = json['product_sessions'];
    productSessionsPriceMax = json['product_sessions_price_max'];
    productSessionsPriceMin = json['product_sessions_price_min'];
    productExamAuto = json['product_exam_auto'];
    productExamId = json['product_exam_id'];
    productRestrictChapters = json['product_restrict_chapters'];
    productSessionsMax = json['product_sessions_max'];
    productDescription = json['product_description'];
    productNotes = json['product_notes'];
    productReviewsTotal = json['product_reviews_total'];
    productReviewsAvg = json['product_reviews_avg'];
    productTermFilename = json['product_term_filename'];
    productIntroFilename = json['product_intro_filename'];
    productAdvantagesEnabled = json['product_advantages_enabled'];
    productAdvantages = json['product_advantages'];
    productGoalsEnabled = json['product_goals_enabled'];
    productGoals = json['product_goals'];
    productFormatEnabled = json['product_format_enabled'];
    productFormat = json['product_format'];
    productIdcardEnabled = json['product_idcard_enabled'];
    productIdcardFilename = json['product_idcard_filename'];
    productIdcardDemoFilename = json['product_idcard_demo_filename'];
    productIdcardNameX = json['product_idcard_name_x'];
    productIdcardNameY = json['product_idcard_name_y'];
    productIdcardNameColor = json['product_idcard_name_color'];
    productIdcardNameFsize = json['product_idcard_name_fsize'];
    productIdcardNameWidth = json['product_idcard_name_width'];
    productIdcardBarcodeEnabled = json['product_idcard_barcode_enabled'];
    productIdcardBarcodeX = json['product_idcard_barcode_x'];
    productIdcardBarcodeY = json['product_idcard_barcode_y'];
    productIdcardBarcodeWidth = json['product_idcard_barcode_width'];
    productIdcardBarcodeHeight = json['product_idcard_barcode_height'];
    productIdcardDateEnabled = json['product_idcard_date_enabled'];
    productIdcardDateX = json['product_idcard_date_x'];
    productIdcardDateY = json['product_idcard_date_y'];
    productIdcardDateColor = json['product_idcard_date_color'];
    productIdcardDateFsize = json['product_idcard_date_fsize'];
    productCertificateEnabled = json['product_certificate_enabled'];
    productCertificateFilename = json['product_certificate_filename'];
    productCertificateDemoFilename = json['product_certificate_demo_filename'];
    productCertificateNameX = json['product_certificate_name_x'];
    productCertificateNameY = json['product_certificate_name_y'];
    productCertificateNameFsize = json['product_certificate_name_fsize'];
    productCertificateNameColor = json['product_certificate_name_color'];
    productCertificateNameWidth = json['product_certificate_name_width'];
    productCertificateQrEnabled = json['product_certificate_qr_enabled'];
    productCertificateQrWidth = json['product_certificate_qr_width'];
    productCertificateQrX = json['product_certificate_qr_x'];
    productCertificateQrY = json['product_certificate_qr_y'];
    productCertificateDateEnabled = json['product_certificate_date_enabled'];
    productCertificateDateX = json['product_certificate_date_x'];
    productCertificateDateY = json['product_certificate_date_y'];
    productCertificateDateColor = json['product_certificate_date_color'];
    productCertificateInstructorEnabled =
    json['product_certificate_instructor_enabled'];
    productCertificateInstructorX = json['product_certificate_instructor_x'];
    productCertificateInstructorY = json['product_certificate_instructor_y'];
    productCertificateInstructorFsize =
    json['product_certificate_instructor_fsize'];
    productCertificateInstructorColor =
    json['product_certificate_instructor_color'];
    productCertificateStudidEnabled =
    json['product_certificate_studid_enabled'];
    productCertificateStudidX = json['product_certificate_studid_x'];
    productCertificateStudidY = json['product_certificate_studid_y'];
    productCertificateStudidFsize = json['product_certificate_studid_fsize'];
    productCertificateStudidColor = json['product_certificate_studid_color'];
    postFilename = json['post_filename'];
  }


}


class ProductPosts {
  String? is_cover;
  String? post_filename;

  ProductPosts.fromJson(Map<String,dynamic> json){
    is_cover = json['is_cover'];
    post_filename= json['post_filename'];
  }
}



class Instructors {
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



  Instructors.fromJson(Map<String, dynamic> json) {
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

class ProductsReviews {
  String? rEVIEWID;
  String? sTUDENTID;
  String? pRODUCTID;
  String? reviewStars;
  String? reviewTitle;
  String? reviewTxt;
  String? reviewActive;
  String? reviewDate;
  String? reviewTime;
  String? reviewPublished;
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



  ProductsReviews.fromJson(Map<String, dynamic> json) {
    rEVIEWID = json['REVIEWID'];
    sTUDENTID = json['STUDENTID'];
    pRODUCTID = json['PRODUCTID'];
    reviewStars = json['review_stars'];
    reviewTitle = json['review_title'];
    reviewTxt = json['review_txt'];
    reviewActive = json['review_active'];
    reviewDate = json['review_date'];
    reviewTime = json['review_time'];
    reviewPublished = json['review_published'];
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['REVIEWID'] = this.rEVIEWID;
    data['STUDENTID'] = this.sTUDENTID;
    data['PRODUCTID'] = this.pRODUCTID;
    data['review_stars'] = this.reviewStars;
    data['review_title'] = this.reviewTitle;
    data['review_txt'] = this.reviewTxt;
    data['review_active'] = this.reviewActive;
    data['review_date'] = this.reviewDate;
    data['review_time'] = this.reviewTime;
    data['review_published'] = this.reviewPublished;
    data['STUDENTAFID'] = this.sTUDENTAFID;
    data['student_uniqueid'] = this.studentUniqueid;
    data['student_fullname'] = this.studentFullname;
    data['student_type'] = this.studentType;
    data['student_email'] = this.studentEmail;
    data['student_phone'] = this.studentPhone;
    data['student_certificate_name'] = this.studentCertificateName;
    data['student_taxes_id'] = this.studentTaxesId;
    data['student_trading_id'] = this.studentTradingId;
    data['student_sales'] = this.studentSales;
    data['student_sales_returns'] = this.studentSalesReturns;
    data['student_sales_paid'] = this.studentSalesPaid;
    data['student_sales_withdrawed'] = this.studentSalesWithdrawed;
    data['student_purchases'] = this.studentPurchases;
    data['student_purchases_returns'] = this.studentPurchasesReturns;
    data['student_purchases_paid'] = this.studentPurchasesPaid;
    data['student_purchases_withdrawed'] = this.studentPurchasesWithdrawed;
    data['student_debit'] = this.studentDebit;
    data['student_credit'] = this.studentCredit;
    data['student_balance'] = this.studentBalance;
    data['student_debit_initial'] = this.studentDebitInitial;
    data['student_credit_initial'] = this.studentCreditInitial;
    data['student_balance_initial'] = this.studentBalanceInitial;
    data['student_username'] = this.studentUsername;
    data['student_password'] = this.studentPassword;
    data['student_gender'] = this.studentGender;
    data['student_organization'] = this.studentOrganization;
    data['student_description'] = this.studentDescription;
    data['student_country'] = this.studentCountry;
    data['student_orders'] = this.studentOrders;
    data['student_add_time'] = this.studentAddTime;
    data['student_login_time'] = this.studentLoginTime;
    data['student_verified'] = this.studentVerified;
    data['student_status'] = this.studentStatus;
    data['student_assessed'] = this.studentAssessed;
    data['student_assessed_notes'] = this.studentAssessedNotes;
    data['student_force_password'] = this.studentForcePassword;
    data['student_profilepicture'] = this.studentProfilepicture;
    data['student_coverpicture'] = this.studentCoverpicture;
    data['student_ip'] = this.studentIp;
    data['student_lip'] = this.studentLip;
    data['student_mylang'] = this.studentMylang;
    data['student_mycountry'] = this.studentMycountry;
    data['student_facebook_connected'] = this.studentFacebookConnected;
    data['student_facebook_id'] = this.studentFacebookId;
    data['student_vcode'] = this.studentVcode;
    data['student_vcode_time'] = this.studentVcodeTime;
    data['student_reset_vcode'] = this.studentResetVcode;
    data['student_reset_vcode_time'] = this.studentResetVcodeTime;
    data['student_google_connected'] = this.studentGoogleConnected;
    data['student_google_id'] = this.studentGoogleId;
    data['student_city'] = this.studentCity;
    data['student_street'] = this.studentStreet;
    data['student_building'] = this.studentBuilding;
    data['student_phone_2'] = this.studentPhone2;
    data['student_address_info'] = this.studentAddressInfo;
    data['student_code'] = this.studentCode;
    data['student_points'] = this.studentPoints;
    data['student_zoom_connected'] = this.studentZoomConnected;
    data['student_zoom_id'] = this.studentZoomId;
    data['student_zoom_email'] = this.studentZoomEmail;
    data['student_zoom_personal_meeting_url'] =
        this.studentZoomPersonalMeetingUrl;
    data['student_zoom_jid'] = this.studentZoomJid;
    data['student_zoom_account_id'] = this.studentZoomAccountId;
    data['student_zoom_access_token'] = this.studentZoomAccessToken;
    data['student_zoom_refresh_token'] = this.studentZoomRefreshToken;
    data['student_whatsapp_enabled'] = this.studentWhatsappEnabled;
    data['student_whatsapp_group_name'] = this.studentWhatsappGroupName;
    data['student_whatsapp_number'] = this.studentWhatsappNumber;
    data['student_timezone'] = this.studentTimezone;
    data['student_idcard_filename'] = this.studentIdcardFilename;
    data['student_accesstoken'] = this.studentAccesstoken;
    data['student_firebase_accesstoken'] = this.studentFirebaseAccesstoken;
    return data;
  }
}
