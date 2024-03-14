part of 'instructor_sub_cubit.dart';

@immutable
abstract class InstructorSubState {}

class InstructorSubInitial extends InstructorSubState {}



class GetInstructorSubscriptionLoading extends InstructorSubState {}
class GetInstructorSubscriptionSuccess extends InstructorSubState {}
class GetInstructorSubscriptionError extends InstructorSubState {}


class GetInstructorSubscriptionDetailsLoading extends InstructorSubState {}
class GetInstructorSubscriptionDetailsSuccess extends InstructorSubState {}
class GetInstructorSubscriptionDetailsError extends InstructorSubState {}

class GetInstructorSubscriptionChapterLoading extends InstructorSubState {}
class GetInstructorSubscriptionChapterSuccess extends InstructorSubState {}
class GetInstructorSubscriptionChapterError extends InstructorSubState {}