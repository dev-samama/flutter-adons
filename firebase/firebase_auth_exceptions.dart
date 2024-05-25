// from firebase_auth: ^0.18.0, the error codes have been changed as follows;

String handleErrorResponse(String code) {
  switch (code) {
    case 'invalid-email':
      return 'The email address is not valid.';
    case 'wrong-password':
      return 'The password is incorrect.';
    case 'user-not-found':
      return 'No user found with this email.';
    case 'user-disabled':
      return 'This user account has been disabled.';
    case 'too-many-requests':
      return 'Too many requests. Please try again later.';
    case 'operation-not-allowed':
      return 'This operation is not allowed. Please contact support.';
    case 'email-already-in-use':
      return 'This email is already in use.';
    case 'weak-password':
      return 'The password provided is too weak.';
    case 'credential-already-in-use':
      return 'This credential is already associated with a different user account.';
    case 'invalid-credential':
      return 'The provided email/password is invalid.';
    case 'account-exists-with-different-credential':
      return 'An account already exists with the same email but different sign-in credentials. Sign in using a provider associated with this email address.';
    case 'invalid-verification-code':
      return 'The verification code is invalid.';
    case 'invalid-verification-id':
      return 'The verification ID is invalid.';
    case 'network-request-failed':
      return 'Network error. Please try again.';
    default:
      return 'An unknown error occurred. Please try again.';
  }
}

// for older versions you can use somthing like below:
String getMessageFromErrorCode(String code) {
  switch (code) {
    case "ERROR_EMAIL_ALREADY_IN_USE":
    case "email-already-in-use":
      return "Email already used. Go to login page.";

    case "ERROR_WRONG_PASSWORD":
    case "wrong-password":
      return "Wrong email/password combination.";

    case "ERROR_USER_NOT_FOUND":
    case "user-not-found":
      return "No user found with this email.";

    case "ERROR_USER_DISABLED":
    case "user-disabled":
      return "User disabled.";

    case "ERROR_OPERATION_NOT_ALLOWED":
    case "operation-not-allowed":
      return "Server error, please try again later.";

    case "ERROR_INVALID_EMAIL":
    case "invalid-email":
      return "Email address is invalid.";

    default:
      return "Login failed. Please try again.";
  }
}
