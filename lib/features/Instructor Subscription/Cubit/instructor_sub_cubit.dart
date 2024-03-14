import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../Network/Local/CashHelper.dart';
import '../../../Network/Remote/dio_helper.dart';
import '../Model/instructor_subscription_chapter_model.dart';
import '../Model/instructor_subscription_details_model.dart';
import '../Model/instructor_subscription_model.dart';

part 'instructor_sub_state.dart';

class InstructorSubCubit extends Cubit<InstructorSubState> {
  InstructorSubCubit() : super(InstructorSubInitial());
  static InstructorSubCubit get(context)=>BlocProvider.of(context);

  InstructorSubscriptionModel? instructorSubscriptionModel;
  InstructorSubscriptionDetailsModel? instructorSubscriptionDetailsModel;
  InstructorSubscriptionChapterModel? instructorSubscriptionChapterModel;

Future<void> getInstructorSubscriptionData()async{

  emit(GetInstructorSubscriptionLoading());

  DioHelper.postData(
    data: {
      'page' : 1,
    },
    url: 'instructor_subscriptions.php',
    token: CashHelper.getData(key: 'token'),
  ).then((value){
    instructorSubscriptionModel = InstructorSubscriptionModel.formJson(value.data);
    emit(GetInstructorSubscriptionSuccess());
  }).catchError((error){

    emit(GetInstructorSubscriptionError());
  });
}

Future<void> getInstructorSubscriptionDetailsData({required String id})async{
  instructorSubscriptionDetailsModel = null;
  emit(GetInstructorSubscriptionDetailsLoading());

  DioHelper.postData(
    data: {
      'type' : 'subscription',
      'id' : id,
    },
    url: 'instructor_subscriptions.php',
    token: CashHelper.getData(key: 'token'),
  ).then((value){

    instructorSubscriptionDetailsModel = InstructorSubscriptionDetailsModel.formJson(value.data);
    emit(GetInstructorSubscriptionDetailsSuccess());
  }).catchError((error){
    print(error.toString());
    emit(GetInstructorSubscriptionDetailsError());
  });
}


Future<void> getInstructorSubscriptionChapterData({required String id})async{
  instructorSubscriptionChapterModel = null;
  emit(GetInstructorSubscriptionChapterLoading());

  DioHelper.postData(
    data: {
      'type' : 'chapter',
      'id' : id,
    },
    url: 'instructor_subscriptions.php',
    token: CashHelper.getData(key: 'token'),
  ).then((value){
    print(value.data);
    instructorSubscriptionChapterModel = InstructorSubscriptionChapterModel.formJson(value.data);
    emit(GetInstructorSubscriptionChapterSuccess());
  }).catchError((error){

    emit(GetInstructorSubscriptionChapterError());
  });
}


}
