import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:saico_academy/Models/Student%20Subscribtion/student_subscription_model.dart';
import 'package:saico_academy/Models/Student%20Subscription%20Details/student_subscription_details.dart';
import 'package:saico_academy/Network/Local/CashHelper.dart';
import 'package:saico_academy/Network/Remote/dio_helper.dart';
import 'package:saico_academy/Network/endPoind.dart';

import '../../Models/Studnet Subscription Chapter/student_subscription_chapter_model.dart';

part 'sub_state.dart';

class SubCubit extends Cubit<SubState> {
  SubCubit() : super(SubInitial());

 static SubCubit get(context)=> BlocProvider.of(context);


  StudentSubscriptionModel? studentSubscriptionModel;
  StudentSubscriptionDetailsModel? studentSubscriptionDetailsModel;
  StudentSubscriptionChapterModel? studentSubscriptionChapterModel;


  Future<void> getStudentSubscriptionData()async{

    emit(GetStudentSubscriptionLoading());

    DioHelper.postData(
        data: {
          'page' : 1,
        },
        url: STUDENT_SUBSCRIPTION,
        token: CashHelper.getData(key: 'token'),
    ).then((value){

      studentSubscriptionModel = StudentSubscriptionModel.formJson(value.data);
      emit(GetStudentSubscriptionSuccess());
    }).catchError((error){

      emit(GetStudentSubscriptionError());
    });
  }

  Future<void> getStudentSubscriptionDetailsData({required String id})async{
  studentSubscriptionDetailsModel = null;
    emit(GetStudentSubscriptionDetailsLoading());

    DioHelper.postData(
      data: {
        'type' : 'subscription',
        'id' : id,
      },
      url: STUDENT_SUBSCRIPTION,
      token: CashHelper.getData(key: 'token'),
    ).then((value){
      studentSubscriptionDetailsModel = StudentSubscriptionDetailsModel.formJson(value.data);
      emit(GetStudentSubscriptionDetailsSuccess());
    }).catchError((error){
      print(error.toString());
      emit(GetStudentSubscriptionDetailsError());
    });
  }

  Future<void> getStudentSubscriptionChapterData({required String id})async{
    studentSubscriptionChapterModel = null;
    emit(GetStudentSubscriptionChapterLoading());

    DioHelper.postData(
      data: {
        'type' : 'chapter',
        'id' : id,
      },
      url: STUDENT_SUBSCRIPTION,
      token: CashHelper.getData(key: 'token'),
    ).then((value){
      print(value.data);
      studentSubscriptionChapterModel = StudentSubscriptionChapterModel.formJson(value.data);
      emit(GetStudentSubscriptionChapterSuccess());
    }).catchError((error){
      print(error.toString());
      emit(GetStudentSubscriptionChapterError());
    });
  }




}
