part of 'sub_cubit.dart';

@immutable
abstract class SubState {}

class SubInitial extends SubState {}

class GetStudentSubscriptionLoading extends SubState {}
class GetStudentSubscriptionSuccess extends SubState {}
class GetStudentSubscriptionError extends SubState {}


class GetStudentSubscriptionDetailsLoading extends SubState {}
class GetStudentSubscriptionDetailsSuccess extends SubState {}
class GetStudentSubscriptionDetailsError extends SubState {}

class GetStudentSubscriptionChapterLoading extends SubState {}
class GetStudentSubscriptionChapterSuccess extends SubState {}
class GetStudentSubscriptionChapterError extends SubState {}
