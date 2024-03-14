class InstructorProductChapterModel{
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  InstructorProductChapterModel.formJson(Map<String,dynamic> json){
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
  ProductsChapter? productsChapter;
  List<DownloadableProductsFiles>? downloadableProductsFiles;
  List<StreamableProductsFiles>? streamableProductsFiles;




  Data.fromJson(Map<String, dynamic> json) {
    productsChapter = json['products_chapter'] != null
        ? new ProductsChapter.fromJson(json['products_chapter'])
        : null;

    if (json['downloadable_products_files'] != null) {
      downloadableProductsFiles = <DownloadableProductsFiles>[];
      json['downloadable_products_files'].forEach((v) {
        downloadableProductsFiles!
            .add(new DownloadableProductsFiles.fromJson(v));
      });
    }

    if (json['streamable_products_files'] != null) {
      streamableProductsFiles = <StreamableProductsFiles>[];
      json['streamable_products_files'].forEach((v) {
        streamableProductsFiles!.add(new StreamableProductsFiles.fromJson(v));
      });
    }

  }


}

class ProductsChapter {
  String? pROINSTRUCTID;
  String? pRODUCTID;
  String? iNSTRUCTORID;
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
  String? pROCHAPTERID;
  String? prochapterName;
  String? prochapterDescription;
  String? prochapterActive;
  String? prochapterRestrictVideos;
  String? prochapterAssignmentsApproval;
  String? prochapterNotes;
  String? prochapterOrder;
  String? status;

  ProductsChapter(
      {this.pROINSTRUCTID,
        this.pRODUCTID,
        this.iNSTRUCTORID,
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
        this.pROCHAPTERID,
        this.prochapterName,
        this.prochapterDescription,
        this.prochapterActive,
        this.prochapterRestrictVideos,
        this.prochapterAssignmentsApproval,
        this.prochapterNotes,
        this.prochapterOrder,
        this.status});

  ProductsChapter.fromJson(Map<String, dynamic> json) {
    pROINSTRUCTID = json['PROINSTRUCTID'];
    pRODUCTID = json['PRODUCTID'];
    iNSTRUCTORID = json['INSTRUCTORID'];
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
    pROCHAPTERID = json['PROCHAPTERID'];
    prochapterName = json['prochapter_name'];
    prochapterDescription = json['prochapter_description'];
    prochapterActive = json['prochapter_active'];
    prochapterRestrictVideos = json['prochapter_restrict_videos'];
    prochapterAssignmentsApproval = json['prochapter_assignments_approval'];
    prochapterNotes = json['prochapter_notes'];
    prochapterOrder = json['prochapter_order'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PROINSTRUCTID'] = this.pROINSTRUCTID;
    data['PRODUCTID'] = this.pRODUCTID;
    data['INSTRUCTORID'] = this.iNSTRUCTORID;
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
    data['PROCHAPTERID'] = this.pROCHAPTERID;
    data['prochapter_name'] = this.prochapterName;
    data['prochapter_description'] = this.prochapterDescription;
    data['prochapter_active'] = this.prochapterActive;
    data['prochapter_restrict_videos'] = this.prochapterRestrictVideos;
    data['prochapter_assignments_approval'] =
        this.prochapterAssignmentsApproval;
    data['prochapter_notes'] = this.prochapterNotes;
    data['prochapter_order'] = this.prochapterOrder;
    data['status'] = this.status;
    return data;
  }
}

class DownloadableProductsFiles {
  String? pROFILEPROID;
  String? pROFILEID;
  String? pRODUCTID;
  String? pROCHAPTERID;
  String? profileproTitle;
  String? profileproType;
  String? profileproStatus;
  String? profileproOrder;
  String? profileproViews;
  String? profileTitle;
  String? profileFilename;
  String? profileStatus;
  String? profileViews;
  String? profileVideo;
  String? profileProcessed;
  String? profileHls;
  String? filePath;

  DownloadableProductsFiles(
      {this.pROFILEPROID,
        this.pROFILEID,
        this.pRODUCTID,
        this.pROCHAPTERID,
        this.profileproTitle,
        this.profileproType,
        this.profileproStatus,
        this.profileproOrder,
        this.profileproViews,
        this.profileTitle,
        this.profileFilename,
        this.profileStatus,
        this.profileViews,
        this.profileVideo,
        this.profileProcessed,
        this.profileHls,
        this.filePath});

  DownloadableProductsFiles.fromJson(Map<String, dynamic> json) {
    pROFILEPROID = json['PROFILEPROID'];
    pROFILEID = json['PROFILEID'];
    pRODUCTID = json['PRODUCTID'];
    pROCHAPTERID = json['PROCHAPTERID'];
    profileproTitle = json['profilepro_title'];
    profileproType = json['profilepro_type'];
    profileproStatus = json['profilepro_status'];
    profileproOrder = json['profilepro_order'];
    profileproViews = json['profilepro_views'];
    profileTitle = json['profile_title'];
    profileFilename = json['profile_filename'];
    profileStatus = json['profile_status'];
    profileViews = json['profile_views'];
    profileVideo = json['profile_video'];
    profileProcessed = json['profile_processed'];
    profileHls = json['profile_hls'];
    filePath = json['file_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PROFILEPROID'] = this.pROFILEPROID;
    data['PROFILEID'] = this.pROFILEID;
    data['PRODUCTID'] = this.pRODUCTID;
    data['PROCHAPTERID'] = this.pROCHAPTERID;
    data['profilepro_title'] = this.profileproTitle;
    data['profilepro_type'] = this.profileproType;
    data['profilepro_status'] = this.profileproStatus;
    data['profilepro_order'] = this.profileproOrder;
    data['profilepro_views'] = this.profileproViews;
    data['profile_title'] = this.profileTitle;
    data['profile_filename'] = this.profileFilename;
    data['profile_status'] = this.profileStatus;
    data['profile_views'] = this.profileViews;
    data['profile_video'] = this.profileVideo;
    data['profile_processed'] = this.profileProcessed;
    data['profile_hls'] = this.profileHls;
    data['file_path'] = this.filePath;
    return data;
  }
}

class StreamableProductsFiles {
  String? pROFILEPROID;
  String? pROFILEID;
  String? pRODUCTID;
  String? pROCHAPTERID;
  String? profileproTitle;
  String? profileproType;
  String? profileproStatus;
  String? profileproOrder;
  String? profileproViews;
  String? profileTitle;
  String? profileFilename;
  String? profileStatus;
  String? profileViews;
  String? profileVideo;
  String? profileProcessed;
  String? profileHls;
  String? filePath;



  StreamableProductsFiles.fromJson(Map<String, dynamic> json) {
    pROFILEPROID = json['PROFILEPROID'];
    pROFILEID = json['PROFILEID'];
    pRODUCTID = json['PRODUCTID'];
    pROCHAPTERID = json['PROCHAPTERID'];
    profileproTitle = json['profilepro_title'];
    profileproType = json['profilepro_type'];
    profileproStatus = json['profilepro_status'];
    profileproOrder = json['profilepro_order'];
    profileproViews = json['profilepro_views'];
    profileTitle = json['profile_title'];
    profileFilename = json['profile_filename'];
    profileStatus = json['profile_status'];
    profileViews = json['profile_views'];
    profileVideo = json['profile_video'];
    profileProcessed = json['profile_processed'];
    profileHls = json['profile_hls'];
    filePath = json['file_path'];
  }


}
