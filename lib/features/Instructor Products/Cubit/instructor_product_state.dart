part of 'instructor_product_cubit.dart';

@immutable
abstract class InstructorProductState {}

class InstructorProductInitial extends InstructorProductState {}



class GetInstructorProductsLoading extends InstructorProductState {}
class GetInstructorProductsSuccess extends InstructorProductState {}
class GetInstructorProductsError extends InstructorProductState {}


class GetInstructorProductsDetailsLoading extends InstructorProductState {}
class GetInstructorProductsDetailsSuccess extends InstructorProductState {}
class GetInstructorProductsDetailsError extends InstructorProductState {}

class GetInstructorProductsChapterLoading extends InstructorProductState {}
class GetInstructorProductsChapterSuccess extends InstructorProductState {}
class GetInstructorProductsChapterError extends InstructorProductState {}

