class InstructorSubscriptionChapterModel{
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  InstructorSubscriptionChapterModel.formJson(Map<String,dynamic> json){
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
  ProductsSubscriptionsChapter? productsSubscriptionsChapter;
  List<DownloadableProductsFiles>? downloadableProductsFiles;
  List<StreamableProductsFiles>? streamableProductsFiles;
  List<ProductsSubscriptionsAssignments>? productsSubscriptionsAssignments;

  Data(
      {this.productsSubscriptionsChapter,
        this.downloadableProductsFiles,
        this.streamableProductsFiles,
        this.productsSubscriptionsAssignments});

  Data.fromJson(Map<String, dynamic> json) {
    productsSubscriptionsChapter =
    json['products_subscriptions_chapter'] != null
        ? new ProductsSubscriptionsChapter.fromJson(
        json['products_subscriptions_chapter'])
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
    if (json['products_subscriptions_assignments'] != null) {
      productsSubscriptionsAssignments = <ProductsSubscriptionsAssignments>[];
      json['products_subscriptions_assignments'].forEach((v) {
        productsSubscriptionsAssignments!
            .add(new ProductsSubscriptionsAssignments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productsSubscriptionsChapter != null) {
      data['products_subscriptions_chapter'] =
          this.productsSubscriptionsChapter!.toJson();
    }
    if (this.downloadableProductsFiles != null) {
      data['downloadable_products_files'] =
          this.downloadableProductsFiles!.map((v) => v.toJson()).toList();
    }
    if (this.streamableProductsFiles != null) {
      data['streamable_products_files'] =
          this.streamableProductsFiles!.map((v) => v.toJson()).toList();
    }
    if (this.productsSubscriptionsAssignments != null) {
      data['products_subscriptions_assignments'] = this
          .productsSubscriptionsAssignments!
          .map((v) => v.toJson())
          .toList();
    }
    return data;
  }
}

class ProductsSubscriptionsChapter {
  String? pROSUBCHAPID;
  String? pROSUBSCRIPTIONID;
  String? pROCHAPTERID;
  String? pRODUCTID;
  String? sTUDENTID;
  String? prosubchapStatus;
  String? iNVID;
  String? iTEMID;
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
  String? prochapterName;
  String? prochapterDescription;
  String? prochapterActive;
  String? prochapterRestrictVideos;
  String? prochapterAssignmentsApproval;
  String? prochapterNotes;
  String? prochapterOrder;
  String? status;

  ProductsSubscriptionsChapter(
      {this.pROSUBCHAPID,
        this.pROSUBSCRIPTIONID,
        this.pROCHAPTERID,
        this.pRODUCTID,
        this.sTUDENTID,
        this.prosubchapStatus,
        this.iNVID,
        this.iTEMID,
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
        this.prochapterName,
        this.prochapterDescription,
        this.prochapterActive,
        this.prochapterRestrictVideos,
        this.prochapterAssignmentsApproval,
        this.prochapterNotes,
        this.prochapterOrder,
        this.status});

  ProductsSubscriptionsChapter.fromJson(Map<String, dynamic> json) {
    pROSUBCHAPID = json['PROSUBCHAPID'];
    pROSUBSCRIPTIONID = json['PROSUBSCRIPTIONID'];
    pROCHAPTERID = json['PROCHAPTERID'];
    pRODUCTID = json['PRODUCTID'];
    sTUDENTID = json['STUDENTID'];
    prosubchapStatus = json['prosubchap_status'];
    iNVID = json['INVID'];
    iTEMID = json['ITEMID'];
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
    data['PROSUBCHAPID'] = this.pROSUBCHAPID;
    data['PROSUBSCRIPTIONID'] = this.pROSUBSCRIPTIONID;
    data['PROCHAPTERID'] = this.pROCHAPTERID;
    data['PRODUCTID'] = this.pRODUCTID;
    data['STUDENTID'] = this.sTUDENTID;
    data['prosubchap_status'] = this.prosubchapStatus;
    data['INVID'] = this.iNVID;
    data['ITEMID'] = this.iTEMID;
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
        this.profileHls});

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
  String? profileprogressValue;
  int? videoEnabled;
  int? videoNext;

  StreamableProductsFiles(
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
        this.profileprogressValue,
        this.videoEnabled,
        this.videoNext});

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
    profileprogressValue = json['profileprogress_value'];
    videoEnabled = json['videoEnabled'];
    videoNext = json['videoNext'];
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
    data['profileprogress_value'] = this.profileprogressValue;
    data['videoEnabled'] = this.videoEnabled;
    data['videoNext'] = this.videoNext;
    return data;
  }
}

class ProductsSubscriptionsAssignments {
  String? pROSUBASSIGNID;
  String? pROSUBSCRIPTIONID;
  String? pROSUBCHAPID;
  String? pROCHASSIGNID;
  String? pROCHAPTERID;
  String? pRODUCTID;
  String? sTUDENTID;
  String? prosubassignStatus;
  String? prochassignTitle;
  String? prochassignDescription;
  String? prochassignStatus;
  String? prochassignOrder;
  String? prochassignFilename;
  String? prochassignNotes;
  String? status;

  ProductsSubscriptionsAssignments(
      {this.pROSUBASSIGNID,
        this.pROSUBSCRIPTIONID,
        this.pROSUBCHAPID,
        this.pROCHASSIGNID,
        this.pROCHAPTERID,
        this.pRODUCTID,
        this.sTUDENTID,
        this.prosubassignStatus,
        this.prochassignTitle,
        this.prochassignDescription,
        this.prochassignStatus,
        this.prochassignOrder,
        this.prochassignFilename,
        this.prochassignNotes,
        this.status});

  ProductsSubscriptionsAssignments.fromJson(Map<String, dynamic> json) {
    pROSUBASSIGNID = json['PROSUBASSIGNID'];
    pROSUBSCRIPTIONID = json['PROSUBSCRIPTIONID'];
    pROSUBCHAPID = json['PROSUBCHAPID'];
    pROCHASSIGNID = json['PROCHASSIGNID'];
    pROCHAPTERID = json['PROCHAPTERID'];
    pRODUCTID = json['PRODUCTID'];
    sTUDENTID = json['STUDENTID'];
    prosubassignStatus = json['prosubassign_status'];
    prochassignTitle = json['prochassign_title'];
    prochassignDescription = json['prochassign_description'];
    prochassignStatus = json['prochassign_status'];
    prochassignOrder = json['prochassign_order'];
    prochassignFilename = json['prochassign_filename'];
    prochassignNotes = json['prochassign_notes'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PROSUBASSIGNID'] = this.pROSUBASSIGNID;
    data['PROSUBSCRIPTIONID'] = this.pROSUBSCRIPTIONID;
    data['PROSUBCHAPID'] = this.pROSUBCHAPID;
    data['PROCHASSIGNID'] = this.pROCHASSIGNID;
    data['PROCHAPTERID'] = this.pROCHAPTERID;
    data['PRODUCTID'] = this.pRODUCTID;
    data['STUDENTID'] = this.sTUDENTID;
    data['prosubassign_status'] = this.prosubassignStatus;
    data['prochassign_title'] = this.prochassignTitle;
    data['prochassign_description'] = this.prochassignDescription;
    data['prochassign_status'] = this.prochassignStatus;
    data['prochassign_order'] = this.prochassignOrder;
    data['prochassign_filename'] = this.prochassignFilename;
    data['prochassign_notes'] = this.prochassignNotes;
    data['status'] = this.status;
    return data;
  }
}
