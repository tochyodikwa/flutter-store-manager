part of 'forgot_password_bloc.dart';

abstract class ForgotPasswordEvent extends Equatable {
  const ForgotPasswordEvent();

  @override
  List<Object> get props => [];
}

class ForgotPasswordUsernameChanged extends ForgotPasswordEvent {
  const ForgotPasswordUsernameChanged(this.email);

  final String email;

  @override
  List<Object> get props => [email];
}

class ForgotPasswordSubmitted extends ForgotPasswordEvent {
  const ForgotPasswordSubmitted();
}
