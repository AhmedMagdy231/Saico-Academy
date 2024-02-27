class CategoryDetailsModel {
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  CategoryDetailsModel.formJson(Map<String, dynamic> json){
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
  ProductsCat? productsCat;
  List<SubPagesCats>? subProductsCats;
  List<Products>? products;



  Data.fromJson(Map<String, dynamic> json) {
    productsCat = json['products_cat'] != null
        ? new ProductsCat.fromJson(json['products_cat'])
        : null;
    if (json['sub_products_cats'] != null) {
      subProductsCats = <SubPagesCats>[];
      json['sub_products_cats'].forEach((v) {
        subProductsCats!.add(new SubPagesCats.fromJson(v));
      });
    }
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }


}



class SubPagesCats {
  String? pAGESCATID;
  String? pARENTID;
  String? pagescatTitle;
  String? pagescatDescription;
  String? pagescatPhoto;
  String? pagescatActive;
  String? pagescatPriority;
  String? pagescatPages;



  SubPagesCats.fromJson(Map<String, dynamic> json) {
    pAGESCATID = json['PAGESCATID'];
    pARENTID = json['PARENTID'];
    pagescatTitle = json['pagescat_title'];
    pagescatDescription = json['pagescat_description'];
    pagescatPhoto = json['pagescat_photo'];
    pagescatActive = json['pagescat_active'];
    pagescatPriority = json['pagescat_priority'];
    pagescatPages = json['pagescat_pages'];
  }


}

class ProductsCat {
  String? pRODUCTSCATID;
  String? pARENTCATID;
  String? productscatTitle;
  String? productscatDescription;
  String? productscatPic;
  String? productscatActive;
  String? productscatPriority;
  String? productscatProducts;



  ProductsCat.fromJson(Map<String, dynamic> json) {
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

class Products {
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
  int? productBookmarked;
  String? productDescription;



  Products.fromJson(Map<String, dynamic> json) {
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
    productBookmarked = json['product_bookmarked'];
    productDescription = json['product_description'];
  }


}
