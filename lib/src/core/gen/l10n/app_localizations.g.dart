import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_kk.g.dart';
import 'app_localizations_ru.g.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.g.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('kk'),
    Locale('ru')
  ];

  /// No description provided for @aboutAppText.
  ///
  /// In kk, this message translates to:
  /// **'Қолданба – әдетте Android немесе iOS операциялық жүйесімен жұмыс істейтін мобильді құрылғыға арналған бағдарлама. Кеңірек мағынада қолданба кез келген қолданбалы бағдарлама, соның ішінде онлайн бағдарлама. Әдетте олар Android және iOS қолданбалары туралы айтады.'**
  String get aboutAppText;

  /// No description provided for @aboutApplication.
  ///
  /// In kk, this message translates to:
  /// **'Қосымша туралы'**
  String get aboutApplication;

  /// No description provided for @actualPricesForFuel.
  ///
  /// In kk, this message translates to:
  /// **'Жанармайдың ағымдағы бағасы'**
  String get actualPricesForFuel;

  /// No description provided for @addCard.
  ///
  /// In kk, this message translates to:
  /// **'Картаны қосыңыз'**
  String get addCard;

  /// No description provided for @addEmployee.
  ///
  /// In kk, this message translates to:
  /// **'Жұмыскер қосу'**
  String get addEmployee;

  /// No description provided for @apply.
  ///
  /// In kk, this message translates to:
  /// **'Қабылдау'**
  String get apply;

  /// No description provided for @authLaunchText.
  ///
  /// In kk, this message translates to:
  /// **'Әлемді өз қолыңызбен зарядтаңыз'**
  String get authLaunchText;

  /// No description provided for @authLaunchText2.
  ///
  /// In kk, this message translates to:
  /// **'Біздің жылдам зарядтау шешімдеріміз құрылғыңызға кез келген уақытта, кез келген жерде үздіксіз қуат беру арқылы өміріңізді жеңілдетуге арналған.'**
  String get authLaunchText2;

  /// No description provided for @back.
  ///
  /// In kk, this message translates to:
  /// **'Артқа'**
  String get back;

  /// No description provided for @bestBeforeDate.
  ///
  /// In kk, this message translates to:
  /// **'Жарамдылық мерзімі'**
  String get bestBeforeDate;

  /// No description provided for @bonusCard.
  ///
  /// In kk, this message translates to:
  /// **'Бонустық карта'**
  String get bonusCard;

  /// No description provided for @buyCoupon.
  ///
  /// In kk, this message translates to:
  /// **'Купон сатып алу'**
  String get buyCoupon;

  /// No description provided for @cancel.
  ///
  /// In kk, this message translates to:
  /// **'Қайтару'**
  String get cancel;

  /// No description provided for @card.
  ///
  /// In kk, this message translates to:
  /// **'Карта'**
  String get card;

  /// No description provided for @changePassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөз өзгерту'**
  String get changePassword;

  /// No description provided for @checkCode.
  ///
  /// In kk, this message translates to:
  /// **'Растау коды'**
  String get checkCode;

  /// No description provided for @checkCodeText1.
  ///
  /// In kk, this message translates to:
  /// **'Егер код келмесе, біз сізге'**
  String get checkCodeText1;

  /// No description provided for @checkCodeText2.
  ///
  /// In kk, this message translates to:
  /// **'кейін электрондық поштаңызға екінші хабарлама жібереміз'**
  String get checkCodeText2;

  /// No description provided for @choose.
  ///
  /// In kk, this message translates to:
  /// **'Таңдау'**
  String get choose;

  /// No description provided for @chooseCard.
  ///
  /// In kk, this message translates to:
  /// **'Картаны таңдаңыз:'**
  String get chooseCard;

  /// No description provided for @chooseEmployee.
  ///
  /// In kk, this message translates to:
  /// **'Жұмыскерді таңдаңыз:'**
  String get chooseEmployee;

  /// No description provided for @chooseLiters.
  ///
  /// In kk, this message translates to:
  /// **'Литр таңдау:'**
  String get chooseLiters;

  /// No description provided for @chooseNominal.
  ///
  /// In kk, this message translates to:
  /// **'Номиналды таңдаңыз:'**
  String get chooseNominal;

  /// No description provided for @chooseOil.
  ///
  /// In kk, this message translates to:
  /// **'Жанармай таңдау:'**
  String get chooseOil;

  /// No description provided for @chooseOilType.
  ///
  /// In kk, this message translates to:
  /// **'Жанармай типін таңдаңыз:'**
  String get chooseOilType;

  /// No description provided for @chooseRange.
  ///
  /// In kk, this message translates to:
  /// **'Аралықты таңдаңыз:'**
  String get chooseRange;

  /// No description provided for @chooseRole.
  ///
  /// In kk, this message translates to:
  /// **'Рөлді таңдаңыз'**
  String get chooseRole;

  /// No description provided for @chooseType.
  ///
  /// In kk, this message translates to:
  /// **'Типті таңдаңыз:'**
  String get chooseType;

  /// No description provided for @city.
  ///
  /// In kk, this message translates to:
  /// **'Қала'**
  String get city;

  /// No description provided for @codeWillSend.
  ///
  /// In kk, this message translates to:
  /// **'қайтадан жіберіледі'**
  String get codeWillSend;

  /// No description provided for @companyName.
  ///
  /// In kk, this message translates to:
  /// **'Компанияның атауы'**
  String get companyName;

  /// No description provided for @confirmCode.
  ///
  /// In kk, this message translates to:
  /// **'Растау коды'**
  String get confirmCode;

  /// No description provided for @count.
  ///
  /// In kk, this message translates to:
  /// **'саны'**
  String get count;

  /// No description provided for @countOfLiters.
  ///
  /// In kk, this message translates to:
  /// **'Литр саны'**
  String get countOfLiters;

  /// No description provided for @countOfTalons.
  ///
  /// In kk, this message translates to:
  /// **'Талон саны'**
  String get countOfTalons;

  /// No description provided for @coupons.
  ///
  /// In kk, this message translates to:
  /// **'Талондар'**
  String get coupons;

  /// No description provided for @dana.
  ///
  /// In kk, this message translates to:
  /// **'дана'**
  String get dana;

  /// No description provided for @dataSendToModerate.
  ///
  /// In kk, this message translates to:
  /// **'Деректеріңіз модерацияға жіберілді'**
  String get dataSendToModerate;

  /// No description provided for @delete.
  ///
  /// In kk, this message translates to:
  /// **'Жою'**
  String get delete;

  /// No description provided for @deleteAccount.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунтты өшіру'**
  String get deleteAccount;

  /// No description provided for @dtSummer.
  ///
  /// In kk, this message translates to:
  /// **'Жазғы ДО'**
  String get dtSummer;

  /// No description provided for @dtWinter.
  ///
  /// In kk, this message translates to:
  /// **'Қысқы ДО'**
  String get dtWinter;

  /// No description provided for @editProfile.
  ///
  /// In kk, this message translates to:
  /// **'Өзгерту'**
  String get editProfile;

  /// No description provided for @employee.
  ///
  /// In kk, this message translates to:
  /// **'Жұмыскер'**
  String get employee;

  /// No description provided for @enterBin.
  ///
  /// In kk, this message translates to:
  /// **'БИН-ды енгізіңіз'**
  String get enterBin;

  /// No description provided for @enterBinOrIIn.
  ///
  /// In kk, this message translates to:
  /// **'ЖСН немесе БИН енгізіңіз'**
  String get enterBinOrIIn;

  /// No description provided for @enterCountOfTalons.
  ///
  /// In kk, this message translates to:
  /// **'Талондар санын енгізіңіз:'**
  String get enterCountOfTalons;

  /// No description provided for @enterEmail.
  ///
  /// In kk, this message translates to:
  /// **'Поштаны енгізіңіз'**
  String get enterEmail;

  /// No description provided for @enterLiters.
  ///
  /// In kk, this message translates to:
  /// **'Литрды енгізіңіз'**
  String get enterLiters;

  /// No description provided for @enterName.
  ///
  /// In kk, this message translates to:
  /// **'Аты-жөнді енгізіңіз'**
  String get enterName;

  /// No description provided for @enterPassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді еңгізіңіз'**
  String get enterPassword;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In kk, this message translates to:
  /// **'Телефон номер енгізіңіз'**
  String get enterPhoneNumber;

  /// No description provided for @enterTalonsCount.
  ///
  /// In kk, this message translates to:
  /// **'Талон санын енгізіңіз'**
  String get enterTalonsCount;

  /// No description provided for @exit.
  ///
  /// In kk, this message translates to:
  /// **'Шығу'**
  String get exit;

  /// No description provided for @faq.
  ///
  /// In kk, this message translates to:
  /// **'Аты-жөні'**
  String get faq;

  /// No description provided for @forgetPassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөз ұмыттым?'**
  String get forgetPassword;

  /// No description provided for @generalLiters.
  ///
  /// In kk, this message translates to:
  /// **'Жалпы литр саны'**
  String get generalLiters;

  /// No description provided for @generateCard.
  ///
  /// In kk, this message translates to:
  /// **'Картаны жасау'**
  String get generateCard;

  /// No description provided for @goods.
  ///
  /// In kk, this message translates to:
  /// **'Тауар'**
  String get goods;

  /// No description provided for @history.
  ///
  /// In kk, this message translates to:
  /// **'Тарих'**
  String get history;

  /// No description provided for @homePage.
  ///
  /// In kk, this message translates to:
  /// **'Басты бет'**
  String get homePage;

  /// No description provided for @ifCodeNotReceived.
  ///
  /// In kk, this message translates to:
  /// **'Код келмеген жағдайда,  '**
  String get ifCodeNotReceived;

  /// No description provided for @iin.
  ///
  /// In kk, this message translates to:
  /// **'ЖСН'**
  String get iin;

  /// No description provided for @incorrectEmail.
  ///
  /// In kk, this message translates to:
  /// **'Қате пошта'**
  String get incorrectEmail;

  /// No description provided for @incorrectNumber.
  ///
  /// In kk, this message translates to:
  /// **'Қате номер'**
  String get incorrectNumber;

  /// No description provided for @incorrectPasswordOrPhoneNumber.
  ///
  /// In kk, this message translates to:
  /// **'Номер немесе құпия сөз қате'**
  String get incorrectPasswordOrPhoneNumber;

  /// No description provided for @individBussinessman.
  ///
  /// In kk, this message translates to:
  /// **'ЖК'**
  String get individBussinessman;

  /// No description provided for @language.
  ///
  /// In kk, this message translates to:
  /// **'Тіл'**
  String get language;

  /// No description provided for @lastName.
  ///
  /// In kk, this message translates to:
  /// **'Тегі'**
  String get lastName;

  /// No description provided for @legal.
  ///
  /// In kk, this message translates to:
  /// **'Заңды'**
  String get legal;

  /// No description provided for @locale.
  ///
  /// In kk, this message translates to:
  /// **'KK_kk'**
  String get locale;

  /// No description provided for @login.
  ///
  /// In kk, this message translates to:
  /// **'Кіру'**
  String get login;

  /// No description provided for @mapAzs.
  ///
  /// In kk, this message translates to:
  /// **'АЗС Картасы '**
  String get mapAzs;

  /// No description provided for @myCoupons.
  ///
  /// In kk, this message translates to:
  /// **'Купондарым'**
  String get myCoupons;

  /// No description provided for @myDrivers.
  ///
  /// In kk, this message translates to:
  /// **'Менің жүргізушілерім'**
  String get myDrivers;

  /// No description provided for @name.
  ///
  /// In kk, this message translates to:
  /// **'Аты'**
  String get name;

  /// No description provided for @news.
  ///
  /// In kk, this message translates to:
  /// **'Жаңалықтар'**
  String get news;

  /// No description provided for @next.
  ///
  /// In kk, this message translates to:
  /// **'Ары қарай'**
  String get next;

  /// No description provided for @no.
  ///
  /// In kk, this message translates to:
  /// **'Жоқ'**
  String get no;

  /// No description provided for @nominal.
  ///
  /// In kk, this message translates to:
  /// **'Номиналы'**
  String get nominal;

  /// No description provided for @notifications.
  ///
  /// In kk, this message translates to:
  /// **'Хабарландырулар'**
  String get notifications;

  /// No description provided for @oil.
  ///
  /// In kk, this message translates to:
  /// **'Жанармай'**
  String get oil;

  /// No description provided for @oilCard.
  ///
  /// In kk, this message translates to:
  /// **'Жанармай карта'**
  String get oilCard;

  /// No description provided for @open.
  ///
  /// In kk, this message translates to:
  /// **'Ашу'**
  String get open;

  /// No description provided for @openQr.
  ///
  /// In kk, this message translates to:
  /// **'QR - ды ашу'**
  String get openQr;

  /// No description provided for @organizationMail.
  ///
  /// In kk, this message translates to:
  /// **'Ұйым поштасы'**
  String get organizationMail;

  /// No description provided for @passwordsDoesntEqual.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөз сәйкес емес'**
  String get passwordsDoesntEqual;

  /// No description provided for @paymentPage.
  ///
  /// In kk, this message translates to:
  /// **'Төлем беті'**
  String get paymentPage;

  /// No description provided for @paymentType.
  ///
  /// In kk, this message translates to:
  /// **'Төлем түрі'**
  String get paymentType;

  /// No description provided for @paymentWays.
  ///
  /// In kk, this message translates to:
  /// **'Төлем жолдары'**
  String get paymentWays;

  /// No description provided for @phone.
  ///
  /// In kk, this message translates to:
  /// **'Телефон номер'**
  String get phone;

  /// No description provided for @physical.
  ///
  /// In kk, this message translates to:
  /// **'Физикалық'**
  String get physical;

  /// No description provided for @profile.
  ///
  /// In kk, this message translates to:
  /// **'Парақша'**
  String get profile;

  /// No description provided for @read.
  ///
  /// In kk, this message translates to:
  /// **'Оқу'**
  String get read;

  /// No description provided for @refill.
  ///
  /// In kk, this message translates to:
  /// **'Толықтыру'**
  String get refill;

  /// No description provided for @refuel.
  ///
  /// In kk, this message translates to:
  /// **'Жанармай құю'**
  String get refuel;

  /// No description provided for @register.
  ///
  /// In kk, this message translates to:
  /// **'Тіркелу'**
  String get register;

  /// No description provided for @registerText1.
  ///
  /// In kk, this message translates to:
  /// **'Тіркеу арқылы сіз'**
  String get registerText1;

  /// No description provided for @registerText2.
  ///
  /// In kk, this message translates to:
  /// **'Пайдаланушы келісімінің шарттарын қабылдайсыз'**
  String get registerText2;

  /// No description provided for @registerText3.
  ///
  /// In kk, this message translates to:
  /// **'және Құпиялық саясатына сәйкес жеке деректерді өңдеуге келісесіз,'**
  String get registerText3;

  /// No description provided for @registerText4.
  ///
  /// In kk, this message translates to:
  /// **'келісімге қол қоясыз'**
  String get registerText4;

  /// No description provided for @remainingFuel.
  ///
  /// In kk, this message translates to:
  /// **'Қалған жанармай'**
  String get remainingFuel;

  /// No description provided for @repeatPassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді қайталаңыз'**
  String get repeatPassword;

  /// No description provided for @resendCode.
  ///
  /// In kk, this message translates to:
  /// **'сіздің номеріңізге код'**
  String get resendCode;

  /// No description provided for @resetPassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді қалпына келтіру'**
  String get resetPassword;

  /// No description provided for @residuesPetroleumProducts.
  ///
  /// In kk, this message translates to:
  /// **'Мұнай өнімдерінің қалғаны'**
  String get residuesPetroleumProducts;

  /// No description provided for @result.
  ///
  /// In kk, this message translates to:
  /// **'Толық'**
  String get result;

  /// No description provided for @returnPetroleumProducts.
  ///
  /// In kk, this message translates to:
  /// **'Мұнай өнімдерін қайтару'**
  String get returnPetroleumProducts;

  /// No description provided for @returnRefund.
  ///
  /// In kk, this message translates to:
  /// **'Қайтару'**
  String get returnRefund;

  /// No description provided for @sale.
  ///
  /// In kk, this message translates to:
  /// **'Жеңілдік'**
  String get sale;

  /// No description provided for @save.
  ///
  /// In kk, this message translates to:
  /// **'Сақтау'**
  String get save;

  /// No description provided for @send.
  ///
  /// In kk, this message translates to:
  /// **'Жіберу'**
  String get send;

  /// No description provided for @sendCode.
  ///
  /// In kk, this message translates to:
  /// **'Код жіберу'**
  String get sendCode;

  /// No description provided for @sendSmsCode.
  ///
  /// In kk, this message translates to:
  /// **'SMS код жіберу'**
  String get sendSmsCode;

  /// No description provided for @showQrToCashier.
  ///
  /// In kk, this message translates to:
  /// **'Кассирге QR кодын көрсетіңіз'**
  String get showQrToCashier;

  /// No description provided for @signIn.
  ///
  /// In kk, this message translates to:
  /// **'Тіркелу'**
  String get signIn;

  /// No description provided for @spend.
  ///
  /// In kk, this message translates to:
  /// **'Өткізу'**
  String get spend;

  /// No description provided for @successfullTransfer.
  ///
  /// In kk, this message translates to:
  /// **'Аударма сәтті аяқталды!'**
  String get successfullTransfer;

  /// No description provided for @sum.
  ///
  /// In kk, this message translates to:
  /// **'Сома'**
  String get sum;

  /// No description provided for @support.
  ///
  /// In kk, this message translates to:
  /// **'Көмек көрсету қызметі'**
  String get support;

  /// No description provided for @talonCard.
  ///
  /// In kk, this message translates to:
  /// **'Талон картасы'**
  String get talonCard;

  /// No description provided for @thanksForBuy.
  ///
  /// In kk, this message translates to:
  /// **'Сатып алғаныңызға рахмет !'**
  String get thanksForBuy;

  /// No description provided for @too.
  ///
  /// In kk, this message translates to:
  /// **'ЖШС'**
  String get too;

  /// No description provided for @topUpTheCard.
  ///
  /// In kk, this message translates to:
  /// **'Картаны толтыру'**
  String get topUpTheCard;

  /// No description provided for @transferSuccessBottomText.
  ///
  /// In kk, this message translates to:
  /// **'Купонның жарамдылық мерзімі 1 айға дейін Толық ақпарат алу үшін техникалық қолдау қызметіне хабарласуға болады.'**
  String get transferSuccessBottomText;

  /// No description provided for @translations.
  ///
  /// In kk, this message translates to:
  /// **'Аударымдар'**
  String get translations;

  /// No description provided for @typeOfPayment.
  ///
  /// In kk, this message translates to:
  /// **'Төлем тәсілі'**
  String get typeOfPayment;

  /// No description provided for @wantToDelete.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунт өшіргіңіз келе ме?'**
  String get wantToDelete;

  /// No description provided for @watchAll.
  ///
  /// In kk, this message translates to:
  /// **'Барлығын көру'**
  String get watchAll;

  /// No description provided for @yes.
  ///
  /// In kk, this message translates to:
  /// **'Иә'**
  String get yes;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['kk', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'kk': return AppLocalizationsKk();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
