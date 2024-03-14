import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:saico_academy/features/Instructor%20Products/Models/Instructor%20Product%20Details/instructor_products_details.dart';
import 'package:saico_academy/features/Instructor%20Products/Models/Instructor%20Products/insturctor_products_model.dart';

import '../../../Network/Local/CashHelper.dart';
import '../../../Network/Remote/dio_helper.dart';
import '../../../Network/endPoind.dart';
import '../Models/Instructor Product Chapter Details/intstructor_chapter_details_model.dart';

part 'instructor_product_state.dart';

class InstructorProductCubit extends Cubit<InstructorProductState> {
  InstructorProductCubit() : super(InstructorProductInitial());

 static InstructorProductCubit get(context)=> BlocProvider.of(context);

 InstructorProductModel? instructorProductModel;
 InstructorProductDetailsModel? instructorProductDetailsModel;
  InstructorProductChapterModel? instructorProductChapterModel;


  Future<void> getInstructorProductData()async{

    emit(GetInstructorProductsLoading());

    DioHelper.postData(
      data: {
        'page' : 1,
      },
      url: 'instructor_products.php',
      token: CashHelper.getData(key: 'token'),
    ).then((value){
      instructorProductModel = InstructorProductModel.formJson(value.data);
      emit(GetInstructorProductsSuccess());
    }).catchError((error){

      emit(GetInstructorProductsError());
    });
  }

  Future<void> getInstructorProductDetailsData({required String id})async{
    instructorProductDetailsModel = null;
    emit(GetInstructorProductsDetailsLoading());

    DioHelper.postData(
      data: {
        'type' : 'product',
        'id' : id,
      },
      url: 'instructor_products.php',
      token: CashHelper.getData(key: 'token'),
    ).then((value){
      instructorProductDetailsModel = InstructorProductDetailsModel.formJson(value.data);
      emit(GetInstructorProductsDetailsSuccess());
    }).catchError((error){
      print(error.toString());
      emit(GetInstructorProductsDetailsError());
    });
  }

  Future<void> getInstructorProductChapterData({required String id})async{
    instructorProductChapterModel = null;
    emit(GetInstructorProductsChapterLoading());

    DioHelper.postData(
      data: {
        'type' : 'chapter',
        'id' : id,
      },
      url: 'instructor_products.php',
      token: CashHelper.getData(key: 'token'),
    ).then((value){

      instructorProductChapterModel = InstructorProductChapterModel.formJson(value.data);
      emit(GetInstructorProductsChapterSuccess());
    }).catchError((error){
      print(error.toString());
      emit(GetInstructorProductsChapterError());
    });
  }



}
