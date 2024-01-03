class Validation {
  static String isValidEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (email.isEmpty) {
      return 'Email is empty';
    } else if (emailRegex.hasMatch(email)) {
      return 'Invalid email address';
    }
    return 'valid';
  }

  static bool isValidPassword(String password) {
    if (password.isEmpty) {
      return false;
    }
    final RegExp passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$',
    );
    return passwordRegex.hasMatch(password);
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return false;
    }
    final RegExp phoneRegex = RegExp(
      r'^\+\d{10,}$',
    );
    return phoneRegex.hasMatch(phoneNumber);
  }
}
