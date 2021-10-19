import 'package:get/get.dart';
import '../ui/page/bottom_navigation_page.dart';
import 'route.dart';
import '../ui/page/import_collection_page.dart';
import '../binding/import_collection_binding.dart';

abstract class AppPage {
  static final List<GetPage> pages = [
    GetPage(
        name: firstLaunchRoute,
        binding: SplashBinding(),
        page: () => const SplashPage()),
    GetPage(
        name: loginRoute,
        binding: LoginBinding(),
        page: () => const LoginPage()),
    GetPage(
        name: forgotPasswordRoute,
        binding: ForgotPasswordBinding(),
        page: () => const ForgotPasswordPage()),
    GetPage(
        name: signUpRoute,
        binding: SignUpBinding(),
        page: () => const SignUpPage()),
    GetPage(
        name: verifyOtpRoute,
        binding: OtpBinding(),
        page: () => const OtpPage()),
    GetPage(
        name: approvedProfileRoute, page: () => const ApprovedProfilePage()),
    GetPage(
        name: approvePendingProfileRoute,
        page: () => const ApprovePendingProfilePage()),
    GetPage(name: otpSuccessRoute, page: () => const OtpSuccessPage()),
    GetPage(
        name: stepBasicDetailRoute, page: () => const StepBasicDetailPage()),
    GetPage(
        name: stepContactDetailRoute,
        page: () => const StepContactDetailPage()),
    GetPage(name: stepJobSettingsRoute, page: () => const StepJobSettingPage()),
    GetPage(
        name: stepUploadDocumentRoute,
        page: () => const StepUploadDocumentPage()),
    GetPage(
        name: stepLocationShareRoute,
        page: () => const StepLocationSharePage()),
    GetPage(name: notificationRoute, page: () => const NotificationPage()),
    GetPage(
        name: bottomNavigationRoute,
        binding: BottomNavigationBinding(),
        page: () => const BottomNavigationPage()),
    GetPage(
        name: profileEditRoute,
        binding: ProfileEditBinding(),
        page: () => const ProfileEditPage()),

    GetPage(name: profileJobSettingRoute, page: () => const ProfileJobSettingPage()),

    GetPage(name: eventDetailRoute, page: () => const EventDetailPage()),

    GetPage(
        name: myCalendarRoute,
        binding: MyCalendarBinding(),
        page: () => const MyCalendarPage()),

    GetPage(
        name: venuesLikeRoute,
        binding: VenuesLikeBinding(),
        page: () => const VenuesLikePage()),
  ];
}
