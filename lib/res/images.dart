class AppImage {
  AppImage._();

  static const _imagePath = "assets/images/";
  static const _imagePathCanada = "assets/images/canada/";
  static const _imagePathJapan = "assets/images/japan/";

  static const backIcon = "${_imagePath}ic_back_arrow.svg";
  static const backArrowIcon = "${_imagePath}ic_back.svg";
  static const dropDownIcon = "${_imagePath}ic_drop_down.svg";
  static const myAccountProfileImage = "";
  static const checkGreenSvg = "${_imagePath}ic_check_green.svg";

  static const successBgJapan = "${_imagePathJapan}img_success_bg.png";
  static const successBgCanada = "${_imagePathCanada}img_success_bg.png";

  static const editIcon = "${_imagePath}ic_edit.svg";
  static const notificationIcon = "${_imagePath}ic_notification.svg";
  static const cardWave = "${_imagePath}ic_card_wave.svg";
  static const appLogo = "${_imagePath}ic_logo.svg";
  static const userPlaceholderImage = "${_imagePath}unnamed.png";
  static const cameraIcon = "${_imagePath}ic_camera.svg";

  static const imgPlaceholder = "${_imagePath}ic_img_palceholder.svg";

  static const indiaFlag = "${_imagePath}img_india_flag.svg";
  static const englishFlag = "${_imagePath}english_flag.svg";
  static const spanishFlag = "${_imagePath}spanish_flag.svg";
  static const checkBlue = "${_imagePath}ic_check_blue.svg";
  static const privacyPolicy = "${_imagePath}ic_privacy_policy.svg";
  static const rating = "${_imagePath}ic_rating.svg";
  static const service = "${_imagePath}ic_service.svg";
  static const update = "${_imagePath}ic_update.svg";
  static const rightArrow = "${_imagePath}ic_right_arrow.svg";
  static const filterIcon = "${_imagePath}ic_filter.svg";
  static const searchIcon = "${_imagePath}ic_search.svg";

  static const bgQr = "${_imagePath}qr_bg.png";
  static const imgCalendar = "${_imagePath}ic_calendar.svg";
  static const addImage = "${_imagePath}ic_add_image.svg";
  static const imgCheckBlue = "${_imagePath}ic_check_blue.svg";
  static const imgPurchaseRoundBg = "${_imagePath}img_purchase_round_bg.svg";
  static const imgCopy = "${_imagePath}ic_copy.svg";

  static const thumbIcon = "${_imagePath}ic_thumb.svg";
  static const faceIcon = "${_imagePath}ic_face.svg";
  static const mainIdIcon = "${_imagePath}ic_mail_id.svg";
  static const passwordIcon = "${_imagePath}ic_password.svg";
  static const verificationIcon = "${_imagePath}ic_verification.svg";
  static const loginPasswordIcon = "${_imagePath}ic_login_password.svg";
  static const phoneNumber = "${_imagePath}ic_phone_number.svg";
  static const verificationGreenIcon = "${_imagePath}ic_verification_green.svg";
  static const closeWhite = "${_imagePath}ic_close_white.svg";
  static const closeBlue = "${_imagePath}ic_close_blue.svg";
  static const imageQr = "${_imagePath}img_qrcode.svg";
  static const imageYen = "${_imagePath}ic_yen.svg";
  static const imageBackBlue = "${_imagePath}ic_back_arrow_blue.svg";
  static const japanBankPng = "${_imagePath}img_japan_bak.png";
  static const americanCardPng = "${_imagePath}img_american.png";
  static const masterCardPng = "${_imagePath}img_mastercard.png";
  static const jcbCardPng = "${_imagePath}img_jcb.png";
  static const visaCardPng = "${_imagePath}img_visa.png";
  static const imgCloseBlue = "${_imagePath}ic_close_blue.svg";
  static const imgDate = "${_imagePath}ic_date.svg";
  static const individualSelect = "${_imagePath}ic_individual_select.svg";
  static const individual = "${_imagePath}ic_individual.svg";
  static const companySelect = "${_imagePath}ic_company_select.svg";
  static const company = "${_imagePath}ic_company.svg";
  static const imgCheckBlack = "${_imagePath}ic_check_black.svg";
  static const userAdd = "${_imagePath}ic_user_add.svg";

  static const transferArrow = "${_imagePath}transfer_arrow.gif";
  static const qrCode = "${_imagePath}ic_qr_code.svg";
  static const splashGif = "${_imagePath}splash_white.gif";
  static const noDataView = "${_imagePath}no_data_view.svg";

  /*region---------------------------------------- Intro Screen ----------------------------------------*/
  static String introJapan(int index) =>
      "${_imagePathJapan}img_info_$index.png";

  static String introCanada(int index) =>
      "${_imagePathCanada}img_info_$index.png";

  static String introCanadaBg(int index) =>
      "${_imagePathCanada}img_info_${index}_bg.svg";

  //endregion

  /*region---------------------------------------- Bottom Navigation Bar ----------------------------------------*/
  static const tabHomeJapanIcon = "${_imagePathJapan}ic_tab_home.svg";
  static const tabProfileJapanIcon = "${_imagePathJapan}ic_tab_profile.svg";
  static const tabHomeCanadaIcon = "${_imagePathCanada}ic_tab_home.svg";
  static const tabProfileCanadaIcon = "${_imagePathCanada}ic_tab_profile.svg";
  static const tabHomeUnselectedCanadaIcon =
      "${_imagePathCanada}ic_tab_home_unselected.svg";
  static const tabProfileUnselectedCanadaIcon =
      "${_imagePathCanada}ic_tab_profile_unselected.svg";
  static const tabScanIcon = "${_imagePath}ic_tab_scan.svg";

  //endregion

  /*region---------------------------------------- Home Screen ----------------------------------------*/
  static const depositFabJapan = "${_imagePathJapan}ic_deposit.svg";
  static const purchaseFabJapan = "${_imagePathJapan}ic_purchase_circle.svg";
  static const transferFabJapan = "${_imagePathJapan}ic_transfer.svg";
  static const depositFabCanada = "${_imagePathCanada}ic_deposit.svg";
  static const transferFabCanada = "${_imagePathCanada}ic_transfer.svg";
  static const withdrawFabCanada = "${_imagePathCanada}ic_withdraw.svg";
  static const exchangeFabCanada = "${_imagePathCanada}ic_exchange.svg";

  //endregion

  /*region---------------------------------------- Profile Tab ----------------------------------------*/
  static const phoneIcon = "${_imagePath}ic_phone.svg";
  static const mailIcon = "${_imagePath}ic_mail.svg";
  static const logoutIcon = "${_imagePath}ic_logout.svg";
  static const aboutIcon = "${_imagePath}ic_about.svg";
  static const feedbackIcon = "${_imagePath}ic_feedback.svg";
  static const securityIcon = "${_imagePath}ic_security.svg";
  static const shareIcon = "${_imagePath}ic_share.svg";
  static const currencyIcon = "${_imagePath}ic_currency.svg";
  static const languageIcon = "${_imagePath}ic_language.svg";
  static const countryIcon = "${_imagePath}ic_country.svg";
  static const contactIcon = "${_imagePath}ic_contact.svg";
  static const addressBookIcon = "${_imagePath}ic_address_book.svg";

  //endregion

  /*region---------------------------------------- Logo ----------------------------------------*/
  static const colorLogoJapan = "${_imagePathJapan}img_color_logo.svg";
  static const colorLogoCanada = "${_imagePathCanada}img_color_logo.svg";
  static const whiteLogoCanada = "${_imagePathCanada}app_logo_white_color.svg";
  static const blackLogo = "${_imagePath}img_black_logo.svg";
  static const logoJapan = "${_imagePathJapan}app_color_logo.png";
  static const logoCanada = "${_imagePathCanada}app_color_logo.png";

  //endregion

  /*region---------------------------------------- Transaction ----------------------------------------*/
  static const sendVector = "${_imagePathCanada}send_vector.svg";
  static const receiveVector = "${_imagePathCanada}receive_vector.svg";
  static const purchaseVector = "${_imagePathCanada}purchase_vector.svg";
  static const withdrawVector = "${_imagePathCanada}withdraw_vector.svg";
  static const sendIcon = "${_imagePath}ic_send_icon.svg";
  static const receiveIcon = "${_imagePath}ic_receive.svg";
  static const purchaseIcon = "${_imagePath}ic_purchase.svg";
  static const withdrawIcon = "${_imagePath}ic_withdraw_icon.svg";

  //endregion

  /*region---------------------------------------- Card Backgrounds ----------------------------------------*/
  static const exchangeIcon = "${_imagePath}ic_exchange_blue.svg";
  static const debitCard = "${_imagePathJapan}img_back_transfer_bg.svg";
  static const creditCard = "${_imagePathJapan}img_credit_card_bg.svg";
  static const debitCardPng = "${_imagePathJapan}img_back_transfer_bg.png";
  static const creditCardPng = "${_imagePathJapan}img_credit_card_bg.png";
  static const debitCardCanada = "${_imagePathCanada}img_bank_bg.svg";
  static const creditCardCanada = "${_imagePathCanada}img_credit_bg.svg";
  static const customAmountBg = "${_imagePathCanada}little_card.png";

  //endregion

  /*region---------------------------------------- Error ----------------------------------------*/
  static const serverError = "${_imagePath}server_error.svg";
  static const noInternetPurple = "${_imagePathJapan}no_internet.svg";
  static const noInternetBlack = "${_imagePathCanada}no_internet.svg";

//endregion

  static const camera = "${_imagePath}camera.png";
  static const gallery = "${_imagePath}gallery.png";
  static const fingerprint = "${_imagePath}ic_fingerprint.svg";
  static const facelock = "${_imagePath}ic_facelock.svg";
  static const iris = "${_imagePath}ic_iris.svg";
  static const lock = "${_imagePath}ic_lock.svg";
  static const error = "${_imagePath}ic_error.svg";
  static const close = "${_imagePath}ic_close.svg";
  static const masterCard = "${_imagePath}master_card.png";
  static const jcb = "${_imagePath}jcb.png";
  static const americanExpress = "${_imagePath}american_express.png";
}
