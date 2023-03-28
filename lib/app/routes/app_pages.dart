import 'package:get/get.dart';

import '../modules/balance/bindings/balance_binding.dart';
import '../modules/balance/views/balance_view.dart';
import '../modules/bottomnavigation/bindings/bottomnavigation_binding.dart';
import '../modules/bottomnavigation/views/bottomnavigation_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/phone_amount/bindings/phone_amount_binding.dart';
import '../modules/phone_amount/views/phone_amount_view.dart';
import '../modules/phonenumber/bindings/phonenumber_binding.dart';
import '../modules/phonenumber/views/phonenumber_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/transaction_success/bindings/transaction_success_binding.dart';
import '../modules/transaction_success/views/transaction_success_view.dart';
import '../modules/wallet/bindings/wallet_binding.dart';
import '../modules/wallet/views/wallet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.PHONENUMBER,
      page: () => const PhonenumberView(),
      binding: PhonenumberBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVIGATION,
      page: () => const BottomnavigationView(),
      binding: BottomnavigationBinding(),
    ),
    GetPage(
      name: _Paths.BALANCE,
      page: () => const BalanceView(),
      binding: BalanceBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => const WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_AMOUNT,
      page: () => const PhoneAmountView(),
      binding: PhoneAmountBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_SUCCESS,
      page: () => const TransactionSuccessView(),
      binding: TransactionSuccessBinding(),
    ),
  ];
}
