
class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "Неизвестная ошибка"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch(code){
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure('Пожалуйста введите более сложный пароль.');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('Не правильная почта или ее формат');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure('Аккаунт на эту почту уже существует');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure('Операция не подтверждена. Обратитесь в поддержку');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure('Этот пользовательно заблокирован. Обратитесь в поддержку');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}