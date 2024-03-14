class StudentSubscriptionDetailsModel{
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  StudentSubscriptionDetailsModel.formJson(Map<String,dynamic> json){
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
        productsSubscriptionsChapters!.add(new ProductsSubscriptionsChapters.fromJson(v));

      });
    }
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
  String? uSERID;
  String? cURRENCYID;
  String? iNVCOUPONID;
  String? invDate;
  String? invInvNum;
  String? invItemsTotal;
  String? invItemsDiscount;
  String? invSubTotal;
  String? invReturns;
  String? invCoupon;
  String? invCouponThreshold;
  String? invCouponMode;
  String? invCouponValue;
  String? invCouponDiscount;
  String? invDiscount;
  String? invTaxes;
  String? invTaxesTotal;
  String? invTotal;
  String? invPaid;
  String? invWithdrawals;
  String? invRemaining;
  String? invStatus;
  String? invNotes;
  String? invFawaterkOrderid;
  String? invFawaterkOrderkey;
  String? invPaymobOrderid;
  String? invConversionRate;
  String? invTotalConverted;
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
    uSERID = json['USERID'];
    cURRENCYID = json['CURRENCYID'];
    iNVCOUPONID = json['INVCOUPONID'];
    invDate = json['inv_date'];
    invInvNum = json['inv_inv_num'];
    invItemsTotal = json['inv_items_total'];
    invItemsDiscount = json['inv_items_discount'];
    invSubTotal = json['inv_sub_total'];
    invReturns = json['inv_returns'];
    invCoupon = json['inv_coupon'];
    invCouponThreshold = json['inv_coupon_threshold'];
    invCouponMode = json['inv_coupon_mode'];
    invCouponValue = json['inv_coupon_value'];
    invCouponDiscount = json['inv_coupon_discount'];
    invDiscount = json['inv_discount'];
    invTaxes = json['inv_taxes'];
    invTaxesTotal = json['inv_taxes_total'];
    invTotal = json['inv_total'];
    invPaid = json['inv_paid'];
    invWithdrawals = json['inv_withdrawals'];
    invRemaining = json['inv_remaining'];
    invStatus = json['inv_status'];
    invNotes = json['inv_notes'];
    invFawaterkOrderid = json['inv_fawaterk_orderid'];
    invFawaterkOrderkey = json['inv_fawaterk_orderkey'];
    invPaymobOrderid = json['inv_paymob_orderid'];
    invConversionRate = json['inv_conversion_rate'];
    invTotalConverted = json['inv_total_converted'];
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
  dynamic? chapterEnabled;
  dynamic? chapterNext;



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


}
