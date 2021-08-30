class ApiUrl {
  ApiUrl._();

  static const baseUrl = "https://primewallet.elaunchinfotech.com/api/";
  static const refreshTokenUrl = "${baseUrl}refreshtoken";
  static const registerMobile = "register-mobile";
  static const verifyOtp = "verify-otp";
  static const resendOtp = "resend-otp";
  static const registration = "registration";
  static const login = "login";
  static const logout = "logout";
  static const forgotPassword = "forgot-password";
  static const resetPassword = "reset-password";
  static const feedBackStore = "feedback/store";
  static const getFeedback = "feedback/";
  static const deleteFeedback = "feedback/delete";
  static const feedbackTypeList = "feedback_type_list";
  static const uploadFile = "upload_file";
  static const getProfile = "get-profile";
  static const saveProfile = "save-profile";
  static const countryList = "country_list";
  static const languageList = "language_list";
  static const kycAddressList = "kyc_address_list";
  static const kycVerificationList = "kyc_verification_list";
  static const saveKycDetail = "kyc/store";
  static const saveCountry = "country-save";
  static const currencyList = "currency_list";
  static const saveCurrency = "currency-save";
  static const saveLanguage = "language-save";
}
