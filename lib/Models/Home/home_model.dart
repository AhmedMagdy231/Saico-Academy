class HomeModel{

  late bool hasError;
  List<dynamic> errors =[];
  List<dynamic> messages=[];
  Data? data;



  HomeModel.fromJson(Map<String, dynamic> json) {
    hasError = json['hasError'];
    errors = json['errors'];
    messages = json['messages'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

}



class Data {
  List<Slides>? slides;
  Advertisement1? advertisement1;
  Advertisement1? advertisement2;
  Advertisement1? advertisement3;
  Advertisement1? advertisement4;
  Advertisement1? advertisement5;
  List<ProductsCats>? productsCats;
  List<NewProducts>? newProducts;



  Data.fromJson(Map<String, dynamic> json) {
    if (json['slides'] != null) {
      slides = <Slides>[];
      json['slides'].forEach((v) {
        slides!.add(new Slides.fromJson(v));
      });
    }
    advertisement1 = json['advertisement_1'] != null
        ? new Advertisement1.fromJson(json['advertisement_1'])
        : null;
    advertisement2 = json['advertisement_2'] != null
        ? new Advertisement1.fromJson(json['advertisement_2'])
        : null;
    advertisement3 = json['advertisement_3'] != null
        ? new Advertisement1.fromJson(json['advertisement_3'])
        : null;
    advertisement4 = json['advertisement_4'] != null
        ? new Advertisement1.fromJson(json['advertisement_4'])
        : null;
    advertisement5 = json['advertisement_5'] != null
        ? new Advertisement1.fromJson(json['advertisement_5'])
        : null;
    if (json['products_cats'] != null) {
      productsCats = <ProductsCats>[];
      json['products_cats'].forEach((v) {
        productsCats!.add(new ProductsCats.fromJson(v));
      });
    }

    if (json['new_products'] != null) {
      newProducts = <NewProducts>[];
      json['new_products'].forEach((v) {
        newProducts!.add(new NewProducts.fromJson(v));
      });
    }
  }


}

class Slides {
  String? sLIDEID;
  String? slideTitle;
  String? slideTitle2;
  String? slidePic;
  String? slideDetails;
  String? slideActive;
  String? slideUrl;



  Slides.fromJson(Map<String, dynamic> json) {
    sLIDEID = json['SLIDEID'];
    slideTitle = json['slide_title'];
    slideTitle2 = json['slide_title_2'];
    slidePic = json['slide_pic'];
    slideDetails = json['slide_details'];
    slideActive = json['slide_active'];
    slideUrl = json['slide_url'];
  }


}

class Advertisement1 {
  String? aDVID;
  String? advName;
  String? advType;
  String? advCode;
  String? advUrl;
  String? advPic;
  String? advActive;
  String? advNotes;



  Advertisement1.fromJson(Map<String, dynamic> json) {
    aDVID = json['ADVID'];
    advName = json['adv_name'];
    advType = json['adv_type'];
    advCode = json['adv_code'];
    advUrl = json['adv_url'];
    advPic = json['adv_pic'];
    advActive = json['adv_active'];
    advNotes = json['adv_notes'];
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

class NewProducts {
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



  NewProducts.fromJson(Map<String, dynamic> json) {
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