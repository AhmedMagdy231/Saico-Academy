import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:saico_academy/Cubits/Auth%20Cubit/auth_cubit.dart';
import 'package:saico_academy/Models/Category%20Details/category_details.dart';
import 'package:saico_academy/Models/Home/home_model.dart';
import 'package:saico_academy/Models/Remove%20bookMarks/remove_bookmarks.dart';
import 'package:saico_academy/Models/Search%20Model/search_model.dart';
import 'package:saico_academy/Models/Threads/threads_model.dart';
import 'package:saico_academy/Models/Time%20Zone/time_zone_model.dart';
import 'package:saico_academy/Models/Universities/center_model.dart';
import 'package:saico_academy/Models/jobs/jobs_model.dart';
import 'package:saico_academy/Models/profile/profile_model.dart';
import 'package:saico_academy/Models/regions/regions_model.dart';
import 'package:saico_academy/Network/Local/CashHelper.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saico_academy/Screens/Category%20Screen/category_screen.dart';
import '../../Constant/Varibles/variables.dart';
import '../../Models/Categories/categoryProductsModel.dart';
import '../../Models/Country/counties_model.dart';
import '../../Models/Delete Account/delete_account.dart';
import '../../Models/Forget Passwrod/forget_password_model.dart';
import '../../Models/Note/note.dart';
import '../../Models/Notification Read/notification_read_model.dart';
import '../../Models/Notification/notification.dart';
import '../../Models/Notification/notification.dart';
import '../../Models/Program Details/program_details_model.dart';
import '../../Models/Thread Details/thread_details_model.dart';
import '../../Models/verfiyToken/verify_token.dart';
import '../../Network/Remote/dio_helper.dart';
import '../../Network/endPoind.dart';
import 'package:http_parser/http_parser.dart';
import '../../Screens/Home Screen/home_screen.dart';
import '../../Screens/Profile Screen/profile_screen.dart';
part 'app_state.dart';



class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  int indexScreen =0;



  String language = 'ar';
  bool isArabic = true;
  int  yourActiveIndexSlider = 0;
  File? image;

  var searchController  = TextEditingController();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var typeController = TextEditingController();
  var countryController = TextEditingController();
  var timeZoneController = TextEditingController();


  var birthdateController = TextEditingController();
  var jobController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  HomeModel? homeModel;
  UserModel? userModel;
  CategoryModel? categoryModel;
  JobsModel? jobsModel;
  RegionsModel? regionsModel;
  UniversitiesModel? universitiesModel;
  ProfileModel? profileModel;
  CategoryDetailsModel? categoryDetailsModel;
  ProgramDetailsModel? programDetailsModel;
  DeleteModel? deleteModel;

  RemoveBookMarksModel? removeBookMarksModel;

  ThreadsModel? threadsModel;
  ThreadDetailsModel? threadDetailsModel;
  ForgetPasswordModel? forgetPasswordModel;
  NotificationModel? notificationModel;
  NotificationReadModel? notificationReadModel;
  SearchModel? searchModel;
  CountriesModel? countriesModel;
  TimeZoneModel? timeZoneModel;



  List<String> images = [];
  List<String> names = [];
  List<Widget> screens = [];


  void clearResources(){
    images.clear();
    names.clear();
    screens.clear();
  }






  Future<void> postPageDetails({required  id})async{
    programDetailsModel = null;
    emit(GetPageDetailsLoading());
    DioHelper.postData(
      data: {
        'type' : 'product',
        'id' : id,
      },
      url: page_details,
      token: await CashHelper.getData(key: 'token'),
    ).then((value) async {

      programDetailsModel = ProgramDetailsModel.formJson(value.data);

      emit(GetPageDetailsSuccess());

    }).catchError((error){
      emit(GetPageDetailsError());
    });
  }











  void changeIndexScreen(int index){
    indexScreen = index;
    emit(ChangeIndexScreen());
  }

  void addMessage({required String message, required String image}){
    threadDetailsModel!.data!.allMessage.insert(
      0,

      AllMessage(
          message: message,
          image: image,
          owner: 1,
      ),
    );
    emit(AddMessageState());

  }

  void changeLanguageApp(){
    isArabic = !isArabic;
    language = isArabic? 'ar' : 'en';
    emit(ChangeLanguageApp());
  }



  Future<void> getTimeZoneData() async {
    emit(GetTimeZoneDataLoading());

    await DioHelper.getData(

      url: TIME_ZONE,
      token: await CashHelper.getData(key: 'token'),
    ).then((value) {
      timeZoneModel = TimeZoneModel.formJson(value.data);
      emit(GetTimeZoneDataSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(GetTimeZoneDataError());
    });
  }


  Future<void> getCountriesData() async {
    emit(GetCountriesDataLoading());

    await DioHelper.getData(

      url: COUNTRIES,
      token: await CashHelper.getData(key: 'token'),
    ).then((value) {
      countriesModel = CountriesModel.formJson(value.data);
      emit(GetCountriesDataSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(GetCountriesDataError());
    });
  }

  Future<void> getHomeData() async {
    emit(GetHomeDataLoading());

    await DioHelper.getData(

      url: home,
      token: await CashHelper.getData(key: 'token'),
    ).then((value) {
      homeModel = HomeModel.fromJson(value.data);
      emit(GetHomeDataSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(GetHomeDataError());
    });
  }

  void changeIndexSlider(int index){
    yourActiveIndexSlider = index;
    emit(ChangeIndexSlider());

  }

  Future<void> postUserData({String? token})async{
    if( await CashHelper.getData(key: 'token') != ''){
      userModel = null;
      emit(GetUserDataLoading());
      DioHelper.postData(
        data: {},
        url: verify_token,
        token:  CashHelper.getData(key: 'token')??'',
      ).then((value) async {

        await getCountriesData();
        await  getTimeZoneData();

        userModel = UserModel.formJson(value.data);


        if(userModel!.hasError == false){



           nameController.text = userModel!.isStudent == true?
           userModel!.data!.student!.studentFullname! :
           userModel!.data!.instructor!.instructorName!;


           emailController.text = userModel!.isStudent == true?
           userModel!.data!.student!.studentEmail! :
           userModel!.data!.instructor!.instructorEmail!;


           phoneController.text = userModel!.isStudent == true?
           userModel!.data!.student!.studentPhone! :
          'No phone to instructor now';


           typeController.text = userModel!.isStudent == true?
           userModel!.data!.student!.studentGender! :
           'No Gender to instructor now';


          countryController.text = userModel!.isStudent == true?
          userModel!.data!.student!.studentCountry! :
          userModel!.data!.instructor!.instructorCountry!;

          timeZoneController.text = userModel!.isStudent == true?
          userModel!.data!.student!.studentTimezone! :
          userModel!.data!.instructor!.instructorTimezone!;


          // phoneController.text = userModel!.data!.student!.studentPhone!;
          // birthdateController.text = userModel!.data!.student!.studentBirthdate!;
          // emailController.text = userModel!.data!.student!.studentEmail!;
          // regionController.text =  getRegionName(userModel!.data!.student!.rEGIONID!);
          // universityController.text =  getUniversityName(userModel!.data!.student!.studentUniversityID!);
          // jobController.text = getJobName(userModel!.data!.student!.studentJobID!);

        }

        emit(GetUserDataSuccess(
          hasError: userModel!.hasError,
          errors: userModel!.errors,
          messages: userModel!.messages,
          token: userModel!.hasError? null : userModel!.isStudent == true?
          userModel!.data!.student!.studentAccesstoken:
          userModel!.data!.instructor!.instructorAccesstoken,
        ));
      }).catchError((error){
        print(error.toString());
        emit(GetUserDataError());
      });

    }

  }

  Future<void> postUpdateUserData()async{
    if( await CashHelper.getData(key: 'token') != ''){
      emit(GetUserDataLoading());
      DioHelper.postData(
        data: {},
        url: verify_token,
        token:  CashHelper.getData(key: 'token')??'',
      ).then((value) async {


        userModel = UserModel.formJson(value.data);

        if(userModel!.hasError == false){
          // nameController.text = userModel!.data!.student!.studentName!;
          // phoneController.text = userModel!.data!.student!.studentPhone!;
          // birthdateController.text = userModel!.data!.student!.studentBirthdate!;
          // emailController.text = userModel!.data!.student!.studentEmail!;
          // regionController.text =  getRegionName(userModel!.data!.student!.rEGIONID!);
          // universityController.text =  getUniversityName(userModel!.data!.student!.studentUniversityID!);
          // jobController.text = getJobName(userModel!.data!.student!.studentJobID!);

        }

        emit(GetUserDataSuccess(
          hasError: userModel!.hasError,
          errors: userModel!.errors,
          messages: userModel!.messages,
          token: userModel!.hasError? null : userModel!.data!.student!.studentAccesstoken,
        ));
      }).catchError((error){
        print(error.toString());
        emit(GetUserDataError());
      });

    }

  }

  Future<void> getCategory()async{
    emit(GetCategoryLoading());
    DioHelper.getData(

        url: category,
    ).then((value){
      categoryModel = CategoryModel.formJson(value.data);
      emit(GetCategorySuccess());
    }).catchError((error){
      print(error.toString());
      emit(GetCategoryError());
    });
  }

  Future<void> getJobData()async{
    emit(GetJobDataLoading());
    DioHelper.getData(

        url: jobs_request,
    ).then((value){

      jobsModel = JobsModel.formJson(value.data);
      emit(GetJobDataSuccess());
    }).catchError((error){
      print(error.toString());
      emit(GetJobDataError());
    });
  }

  String getJobName(String id) {
    String name =  '';
    jobsModel!.data!.studentJobs.forEach((element) {
      if (element.sTudentJOBID == id) {
        name =  element.studentjobName!;
      }
    });
    return name;
  }

  String getJobID(String name) {
    String id =  '';
    jobsModel!.data!.studentJobs.forEach((element) {
      if (element.studentjobName == name) {
        id =  element.sTudentJOBID!;
      }
    });
    return id;
  }

  Future pickImage(ImageSource source) async {
    try {
      final imagee = await ImagePicker().pickImage(source: source);
      if (imagee == null) return;
      File? img = File(imagee.path);
      img = await _cropImage(imageFile: img);
      image = img;

      emit(ImagePickerSuccess());

    } on PlatformException catch (error) {
      print(error);
    }
  }

  Future<File?> _cropImage({required File imageFile}) async {


    try{
      CroppedFile? croppedImage = await ImageCropper().cropImage(sourcePath: imageFile.path);
      if (croppedImage == null) return null;
      return File(croppedImage.path);
    }
    catch (error){
      print(error.toString());


    }


  }

  Future<void> postChangeProfile({

    required String student_name,
    required String student_email,
    required String student_country,
    required String student_timeZone,
    required String student_type,
    required String student_phone,
    required String student_password,


    FormData? student_pic_file,
  }) async {
    FormData formData = FormData.fromMap({
      'password' : student_password,
      'student_fullname': student_name,
      'student_email': student_email,
      'student_phone': student_phone,
      'student_timezone' : student_timeZone,
      'student_country' : student_country,
      'student_gender' : student_type,
      "student_profilepicture_file": image == null
          ? ''
          : await MultipartFile.fromFile(
        image!.path,
        filename: image!.path.split('/').last,
        contentType: MediaType.parse('multipart/form-data'),
      ),
    });
    emit(ChangeProfileLoading());
    await DioHelper.postDataImage(
      data: formData,
      url: tech_profile,
      token: await CashHelper.getData(key: 'token'),
    ).then((value) async {
      profileModel = ProfileModel.formJson(value.data);
      var token =  await CashHelper.getData(key: 'token');
      postUserData(token: token);
      emit(ChangeProfileSuccess(
          hasError:  profileModel!.hasError,
          messages:  profileModel!.messages,
          errors:  profileModel!.errors,
      ));
    }).catchError((error) {
      print(error);
      emit(ChangeProfileError());
    });
  }


  Future<void> postCategoryDetails({required  id})async{
    print("+++++++++++++++${id}++++++++++++");
    categoryDetailsModel = null;
    emit(GetCategoryDetailsLoading());
    DioHelper.postData(
        data: {
          'type' : 'cat',
           'id' : id,
        },
        token: await CashHelper.getData(key: 'token'),
        url: page_details
    ).then((value) {


      categoryDetailsModel = CategoryDetailsModel.formJson(value.data);
      emit(GetCategoryDetailsSuccess());

    }).catchError((error){
      print(error.toString());
      emit(GetCategoryDetailsError());
    });
  }


  Future<void> postDeleteAccount() async {

    emit(DeleteAccountLoading());

    await DioHelper.postData(
      data: {},
      url: delete_request,
      token: await CashHelper.getData(key: 'token'),
    ).then((value) {

      deleteModel = DeleteModel.fromJson(value.data);
      emit(DeleteAccountSuccess());
    }).catchError((error){

    });
  }
















  Future<void> postForgetPassword({required String email})async{

    emit(ForgetPasswordLoading());

    DioHelper.postData(
      data: {
        'student_email' : email,
      },
      url: forget_password,
      token: await CashHelper.getData(key: 'token')??'',
    ).then((value){
      print(value.data);
      forgetPasswordModel = ForgetPasswordModel.formJson(value.data);
      emit(ForgetPasswordSuccess(
        hasError: forgetPasswordModel!.hasError,
        errors: forgetPasswordModel!.errors,
        messages:  forgetPasswordModel!.messages,
      ));
    }).catchError((error){
      print(error.toString());
      emit(ForgetPasswordError());
    });

  }


  void logOut(){
    CashHelper.removeData(key: 'token');
    CashHelper.removeData(key: 'login');
   userModel = null;
    emit(LogOutState());
  }


  Future<void> postRestPassword({required String id,required String code,required password})async{
    emit(ResetPasswordLoading());

    await  DioHelper.postData(
      data: {

        'student_uniqueid': id,
        'student_reset_vcode': code,
        'student_password': password,
      },

      url: reset_password,

    ).then((value){
      userModel = UserModel.formJson(value.data);
      emit(ResetPasswordSuccess(
        hasError: userModel!.hasError,
        errors: userModel!.errors,
        messages: userModel!.messages,
        token: userModel!.hasError? '': userModel!.data!.student!.studentAccesstoken,
      ));
    }
    );

  }

  Future<void> getNotificationRead({required String id,required index}) async {
    notificationModel!.data!.studentsNotifications![index].studnotificationRead = "1";
    emit(NotificationReadLoading());

    await DioHelper.postData(
      data: {
        'id': id,
      },
      url: notification_request,
      token: CashHelper.getData(key: 'token')??'',
    ).then((value) {
      print(value.data);
      notificationReadModel = NotificationReadModel.formJson(value.data);
      emit(NotificationReadSuccess());
    }).catchError((error) {
      print(error);
      emit(NotificationReadError());
    });
  }

  Future<void> getNotification({required int page}) async {
    emit(NotificationLoading());

    await DioHelper.postData(
      data: {
        'page': page,
      },
      url: notification_request,
      token: CashHelper.getData(key: 'token'),
    ).then((value) {
      notificationModel = NotificationModel.formJson(value.data);
      emit(NotificationSuccess());
    });
  }


  Future<void> postSearch({required String  value})async{

    emit(SearchLoading());
    DioHelper.postData(
      data: {
        'search_query' : value,

      },
      url: page_details,
      token: await CashHelper.getData(key: 'token'),
    ).then((value) {
      searchModel = SearchModel.formJson(value.data);
      emit(SearchSuccess());

    }).catchError((error){
      print(error.toString());
    });
  }









}
