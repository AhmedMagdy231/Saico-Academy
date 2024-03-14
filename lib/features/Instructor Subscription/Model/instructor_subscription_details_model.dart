class InstructorSubscriptionDetailsModel{
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  InstructorSubscriptionDetailsModel.formJson(Map<String,dynamic> json){
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
  ProductsSubscription? productsSubscription;

  List<ProductsSubscriptionsChapters>? productsSubscriptionsChapters;



  Data.fromJson(Map<String, dynamic> json) {
    productsSubscription = json['products_subscription'] != null
        ? new ProductsSubscription.fromJson(json['products_subscription'])
        : null;

    if (json['products_subscriptions_chapters'] != null) {
      productsSubscriptionsChapters = <ProductsSubscriptionsChapters>[];
      json['products_subscriptions_chapters'].forEach((v) {
        productsSubscriptionsChapters!
            .add(new ProductsSubscriptionsChapters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productsSubscription != null) {
      data['products_subscription'] = this.productsSubscription!.toJson();
    }

    if (this.productsSubscriptionsChapters != null) {
      data['products_subscriptions_chapters'] =
          this.productsSubscriptionsChapters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductsSubscription {
  String? pROSUBSCRIPTIONID;
  String? iNVID;
  String? iTEMID;
  String? pRODUCTID;
  String? sTUDENTID;
  String? iNSTRUCTORID;
  String? prosubscriptionTokens;
  String? prosubscriptionSessions;
  String? prosubscriptionSessionsRemaining;
  String? prosubscriptionStatus;
  String? prosubscriptionExpirable;
  String? prosubscriptionDateStart;
  String? prosubscriptionDateEnd;
  String? prosubscriptionNotes;
  String? prosubscriptionIdcardFilename;
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
  Null? studentRememberMeKey;
  Null? studentRememberMeTime;
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
  String? status;

  ProductsSubscription(
      {this.pROSUBSCRIPTIONID,
        this.iNVID,
        this.iTEMID,
        this.pRODUCTID,
        this.sTUDENTID,
        this.iNSTRUCTORID,
        this.prosubscriptionTokens,
        this.prosubscriptionSessions,
        this.prosubscriptionSessionsRemaining,
        this.prosubscriptionStatus,
        this.prosubscriptionExpirable,
        this.prosubscriptionDateStart,
        this.prosubscriptionDateEnd,
        this.prosubscriptionNotes,
        this.prosubscriptionIdcardFilename,
        this.sTUDENTAFID,
        this.studentUniqueid,
        this.studentFullname,
        this.studentType,
        this.studentEmail,
        this.studentPhone,
        this.studentCertificateName,
        this.studentTaxesId,
        this.studentTradingId,
        this.studentSales,
        this.studentSalesReturns,
        this.studentSalesPaid,
        this.studentSalesWithdrawed,
        this.studentPurchases,
        this.studentPurchasesReturns,
        this.studentPurchasesPaid,
        this.studentPurchasesWithdrawed,
        this.studentDebit,
        this.studentCredit,
        this.studentBalance,
        this.studentDebitInitial,
        this.studentCreditInitial,
        this.studentBalanceInitial,
        this.studentUsername,
        this.studentPassword,
        this.studentGender,
        this.studentOrganization,
        this.studentDescription,
        this.studentCountry,
        this.studentOrders,
        this.studentAddTime,
        this.studentLoginTime,
        this.studentVerified,
        this.studentStatus,
        this.studentAssessed,
        this.studentAssessedNotes,
        this.studentForcePassword,
        this.studentProfilepicture,
        this.studentCoverpicture,
        this.studentWebsite,
        this.studentRememberMeKey,
        this.studentRememberMeTime,
        this.studentIp,
        this.studentLip,
        this.studentMylang,
        this.studentMycountry,
        this.studentFacebookConnected,
        this.studentFacebookId,
        this.studentVcode,
        this.studentVcodeTime,
        this.studentResetVcode,
        this.studentResetVcodeTime,
        this.studentGoogleConnected,
        this.studentGoogleId,
        this.studentCity,
        this.studentStreet,
        this.studentBuilding,
        this.studentPhone2,
        this.studentAddressInfo,
        this.studentCode,
        this.studentPoints,
        this.studentZoomConnected,
        this.studentZoomId,
        this.studentZoomEmail,
        this.studentZoomPersonalMeetingUrl,
        this.studentZoomJid,
        this.studentZoomAccountId,
        this.studentZoomAccessToken,
        this.studentZoomRefreshToken,
        this.studentWhatsappEnabled,
        this.studentWhatsappGroupName,
        this.studentWhatsappNumber,
        this.studentTimezone,
        this.studentIdcardFilename,
        this.studentAccesstoken,
        this.studentFirebaseAccesstoken,
        this.pRODUCTSCATID,
        this.pROPOSTID,
        this.productPn,
        this.productName,
        this.productActive,
        this.productNew,
        this.productSale,
        this.productType,
        this.productAssessment,
        this.productGroup,
        this.productTokens,
        this.productPrice,
        this.productOrderQty1,
        this.productOrderDiscount1,
        this.productOrderQty2,
        this.productOrderDiscount2,
        this.productOrderQty3,
        this.productOrderDiscount3,
        this.productSessions,
        this.productSessionsPriceMax,
        this.productSessionsPriceMin,
        this.productExamAuto,
        this.productExamId,
        this.productRestrictChapters,
        this.productSessionsMax,
        this.productDescription,
        this.productNotes,
        this.productReviewsTotal,
        this.productReviewsAvg,
        this.productTermFilename,
        this.productIntroFilename,
        this.productAdvantagesEnabled,
        this.productAdvantages,
        this.productGoalsEnabled,
        this.productGoals,
        this.productFormatEnabled,
        this.productFormat,
        this.productIdcardEnabled,
        this.productIdcardFilename,
        this.productIdcardDemoFilename,
        this.productIdcardNameX,
        this.productIdcardNameY,
        this.productIdcardNameColor,
        this.productIdcardNameFsize,
        this.productIdcardNameWidth,
        this.productIdcardBarcodeEnabled,
        this.productIdcardBarcodeX,
        this.productIdcardBarcodeY,
        this.productIdcardBarcodeWidth,
        this.productIdcardBarcodeHeight,
        this.productIdcardDateEnabled,
        this.productIdcardDateX,
        this.productIdcardDateY,
        this.productIdcardDateColor,
        this.productIdcardDateFsize,
        this.productCertificateEnabled,
        this.productCertificateFilename,
        this.productCertificateDemoFilename,
        this.productCertificateNameX,
        this.productCertificateNameY,
        this.productCertificateNameFsize,
        this.productCertificateNameColor,
        this.productCertificateNameWidth,
        this.productCertificateQrEnabled,
        this.productCertificateQrWidth,
        this.productCertificateQrX,
        this.productCertificateQrY,
        this.productCertificateDateEnabled,
        this.productCertificateDateX,
        this.productCertificateDateY,
        this.productCertificateDateColor,
        this.productCertificateInstructorEnabled,
        this.productCertificateInstructorX,
        this.productCertificateInstructorY,
        this.productCertificateInstructorFsize,
        this.productCertificateInstructorColor,
        this.productCertificateStudidEnabled,
        this.productCertificateStudidX,
        this.productCertificateStudidY,
        this.productCertificateStudidFsize,
        this.productCertificateStudidColor,
        this.status});

  ProductsSubscription.fromJson(Map<String, dynamic> json) {
    pROSUBSCRIPTIONID = json['PROSUBSCRIPTIONID'];
    iNVID = json['INVID'];
    iTEMID = json['ITEMID'];
    pRODUCTID = json['PRODUCTID'];
    sTUDENTID = json['STUDENTID'];
    iNSTRUCTORID = json['INSTRUCTORID'];
    prosubscriptionTokens = json['prosubscription_tokens'];
    prosubscriptionSessions = json['prosubscription_sessions'];
    prosubscriptionSessionsRemaining =
    json['prosubscription_sessions_remaining'];
    prosubscriptionStatus = json['prosubscription_status'];
    prosubscriptionExpirable = json['prosubscription_expirable'];
    prosubscriptionDateStart = json['prosubscription_date_start'];
    prosubscriptionDateEnd = json['prosubscription_date_end'];
    prosubscriptionNotes = json['prosubscription_notes'];
    prosubscriptionIdcardFilename = json['prosubscription_idcard_filename'];
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
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PROSUBSCRIPTIONID'] = this.pROSUBSCRIPTIONID;
    data['INVID'] = this.iNVID;
    data['ITEMID'] = this.iTEMID;
    data['PRODUCTID'] = this.pRODUCTID;
    data['STUDENTID'] = this.sTUDENTID;
    data['INSTRUCTORID'] = this.iNSTRUCTORID;
    data['prosubscription_tokens'] = this.prosubscriptionTokens;
    data['prosubscription_sessions'] = this.prosubscriptionSessions;
    data['prosubscription_sessions_remaining'] =
        this.prosubscriptionSessionsRemaining;
    data['prosubscription_status'] = this.prosubscriptionStatus;
    data['prosubscription_expirable'] = this.prosubscriptionExpirable;
    data['prosubscription_date_start'] = this.prosubscriptionDateStart;
    data['prosubscription_date_end'] = this.prosubscriptionDateEnd;
    data['prosubscription_notes'] = this.prosubscriptionNotes;
    data['prosubscription_idcard_filename'] =
        this.prosubscriptionIdcardFilename;
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
    data['student_website'] = this.studentWebsite;
    data['student_remember_me_key'] = this.studentRememberMeKey;
    data['student_remember_me_time'] = this.studentRememberMeTime;
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
    data['PRODUCTSCATID'] = this.pRODUCTSCATID;
    data['PROPOSTID'] = this.pROPOSTID;
    data['product_pn'] = this.productPn;
    data['product_name'] = this.productName;
    data['product_active'] = this.productActive;
    data['product_new'] = this.productNew;
    data['product_sale'] = this.productSale;
    data['product_type'] = this.productType;
    data['product_assessment'] = this.productAssessment;
    data['product_group'] = this.productGroup;
    data['product_tokens'] = this.productTokens;
    data['product_price'] = this.productPrice;
    data['product_order_qty_1'] = this.productOrderQty1;
    data['product_order_discount_1'] = this.productOrderDiscount1;
    data['product_order_qty_2'] = this.productOrderQty2;
    data['product_order_discount_2'] = this.productOrderDiscount2;
    data['product_order_qty_3'] = this.productOrderQty3;
    data['product_order_discount_3'] = this.productOrderDiscount3;
    data['product_sessions'] = this.productSessions;
    data['product_sessions_price_max'] = this.productSessionsPriceMax;
    data['product_sessions_price_min'] = this.productSessionsPriceMin;
    data['product_exam_auto'] = this.productExamAuto;
    data['product_exam_id'] = this.productExamId;
    data['product_restrict_chapters'] = this.productRestrictChapters;
    data['product_sessions_max'] = this.productSessionsMax;
    data['product_description'] = this.productDescription;
    data['product_notes'] = this.productNotes;
    data['product_reviews_total'] = this.productReviewsTotal;
    data['product_reviews_avg'] = this.productReviewsAvg;
    data['product_term_filename'] = this.productTermFilename;
    data['product_intro_filename'] = this.productIntroFilename;
    data['product_advantages_enabled'] = this.productAdvantagesEnabled;
    data['product_advantages'] = this.productAdvantages;
    data['product_goals_enabled'] = this.productGoalsEnabled;
    data['product_goals'] = this.productGoals;
    data['product_format_enabled'] = this.productFormatEnabled;
    data['product_format'] = this.productFormat;
    data['product_idcard_enabled'] = this.productIdcardEnabled;
    data['product_idcard_filename'] = this.productIdcardFilename;
    data['product_idcard_demo_filename'] = this.productIdcardDemoFilename;
    data['product_idcard_name_x'] = this.productIdcardNameX;
    data['product_idcard_name_y'] = this.productIdcardNameY;
    data['product_idcard_name_color'] = this.productIdcardNameColor;
    data['product_idcard_name_fsize'] = this.productIdcardNameFsize;
    data['product_idcard_name_width'] = this.productIdcardNameWidth;
    data['product_idcard_barcode_enabled'] = this.productIdcardBarcodeEnabled;
    data['product_idcard_barcode_x'] = this.productIdcardBarcodeX;
    data['product_idcard_barcode_y'] = this.productIdcardBarcodeY;
    data['product_idcard_barcode_width'] = this.productIdcardBarcodeWidth;
    data['product_idcard_barcode_height'] = this.productIdcardBarcodeHeight;
    data['product_idcard_date_enabled'] = this.productIdcardDateEnabled;
    data['product_idcard_date_x'] = this.productIdcardDateX;
    data['product_idcard_date_y'] = this.productIdcardDateY;
    data['product_idcard_date_color'] = this.productIdcardDateColor;
    data['product_idcard_date_fsize'] = this.productIdcardDateFsize;
    data['product_certificate_enabled'] = this.productCertificateEnabled;
    data['product_certificate_filename'] = this.productCertificateFilename;
    data['product_certificate_demo_filename'] =
        this.productCertificateDemoFilename;
    data['product_certificate_name_x'] = this.productCertificateNameX;
    data['product_certificate_name_y'] = this.productCertificateNameY;
    data['product_certificate_name_fsize'] = this.productCertificateNameFsize;
    data['product_certificate_name_color'] = this.productCertificateNameColor;
    data['product_certificate_name_width'] = this.productCertificateNameWidth;
    data['product_certificate_qr_enabled'] = this.productCertificateQrEnabled;
    data['product_certificate_qr_width'] = this.productCertificateQrWidth;
    data['product_certificate_qr_x'] = this.productCertificateQrX;
    data['product_certificate_qr_y'] = this.productCertificateQrY;
    data['product_certificate_date_enabled'] =
        this.productCertificateDateEnabled;
    data['product_certificate_date_x'] = this.productCertificateDateX;
    data['product_certificate_date_y'] = this.productCertificateDateY;
    data['product_certificate_date_color'] = this.productCertificateDateColor;
    data['product_certificate_instructor_enabled'] =
        this.productCertificateInstructorEnabled;
    data['product_certificate_instructor_x'] =
        this.productCertificateInstructorX;
    data['product_certificate_instructor_y'] =
        this.productCertificateInstructorY;
    data['product_certificate_instructor_fsize'] =
        this.productCertificateInstructorFsize;
    data['product_certificate_instructor_color'] =
        this.productCertificateInstructorColor;
    data['product_certificate_studid_enabled'] =
        this.productCertificateStudidEnabled;
    data['product_certificate_studid_x'] = this.productCertificateStudidX;
    data['product_certificate_studid_y'] = this.productCertificateStudidY;
    data['product_certificate_studid_fsize'] =
        this.productCertificateStudidFsize;
    data['product_certificate_studid_color'] =
        this.productCertificateStudidColor;
    data['status'] = this.status;
    return data;
  }
}

class ProductsSubscriptionsChapters {
  String? pROSUBCHAPID;
  String? pROSUBSCRIPTIONID;
  String? pROCHAPTERID;
  String? pRODUCTID;
  String? sTUDENTID;
  String? prosubchapStatus;
  String? prochapterName;
  String? prochapterDescription;
  String? prochapterActive;
  String? prochapterRestrictVideos;
  String? prochapterAssignmentsApproval;
  String? prochapterNotes;
  String? prochapterOrder;
  String? status;
  int? chapterEnabled;
  dynamic chapterNext;

  ProductsSubscriptionsChapters(
      {this.pROSUBCHAPID,
        this.pROSUBSCRIPTIONID,
        this.pROCHAPTERID,
        this.pRODUCTID,
        this.sTUDENTID,
        this.prosubchapStatus,
        this.prochapterName,
        this.prochapterDescription,
        this.prochapterActive,
        this.prochapterRestrictVideos,
        this.prochapterAssignmentsApproval,
        this.prochapterNotes,
        this.prochapterOrder,
        this.status,
        this.chapterEnabled,
        this.chapterNext});

  ProductsSubscriptionsChapters.fromJson(Map<String, dynamic> json) {
    pROSUBCHAPID = json['PROSUBCHAPID'];
    pROSUBSCRIPTIONID = json['PROSUBSCRIPTIONID'];
    pROCHAPTERID = json['PROCHAPTERID'];
    pRODUCTID = json['PRODUCTID'];
    sTUDENTID = json['STUDENTID'];
    prosubchapStatus = json['prosubchap_status'];
    prochapterName = json['prochapter_name'];
    prochapterDescription = json['prochapter_description'];
    prochapterActive = json['prochapter_active'];
    prochapterRestrictVideos = json['prochapter_restrict_videos'];
    prochapterAssignmentsApproval = json['prochapter_assignments_approval'];
    prochapterNotes = json['prochapter_notes'];
    prochapterOrder = json['prochapter_order'];
    status = json['status'];
    chapterEnabled = json['chapterEnabled'];
    chapterNext = json['chapterNext'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PROSUBCHAPID'] = this.pROSUBCHAPID;
    data['PROSUBSCRIPTIONID'] = this.pROSUBSCRIPTIONID;
    data['PROCHAPTERID'] = this.pROCHAPTERID;
    data['PRODUCTID'] = this.pRODUCTID;
    data['STUDENTID'] = this.sTUDENTID;
    data['prosubchap_status'] = this.prosubchapStatus;
    data['prochapter_name'] = this.prochapterName;
    data['prochapter_description'] = this.prochapterDescription;
    data['prochapter_active'] = this.prochapterActive;
    data['prochapter_restrict_videos'] = this.prochapterRestrictVideos;
    data['prochapter_assignments_approval'] =
        this.prochapterAssignmentsApproval;
    data['prochapter_notes'] = this.prochapterNotes;
    data['prochapter_order'] = this.prochapterOrder;
    data['status'] = this.status;
    data['chapterEnabled'] = this.chapterEnabled;
    data['chapterNext'] = this.chapterNext;
    return data;
  }
}
