class StudentSubscriptionChapterModel{
  late bool hasError;
  late List<dynamic> errors;
  late List<dynamic> messages;
  late Data? data;

  StudentSubscriptionChapterModel.formJson(Map<String,dynamic> json){
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




  Data.fromJson(Map<String, dynamic> json) {
    productsSubscriptionsChapter =
    json['products_subscriptions_chapter'] != null
        ? ProductsSubscriptionsChapter.fromJson(
        json['products_subscriptions_chapter'])
        : null;
    if (json['downloadable_products_files'] != null) {
      downloadableProductsFiles = <DownloadableProductsFiles>[];
      json['downloadable_products_files'].forEach((v) {
        downloadableProductsFiles!
            .add(DownloadableProductsFiles.fromJson(v));
      });
    }
    if (json['streamable_products_files'] != null) {
      streamableProductsFiles = <StreamableProductsFiles>[];
      json['streamable_products_files'].forEach((v) {
        streamableProductsFiles!.add(StreamableProductsFiles.fromJson(v));
      });
    }

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
  dynamic profileprogressValue;
  dynamic videoEnabled;
  dynamic videoNext;



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


}
