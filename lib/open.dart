import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';

enum OpenMode {
  /// Leaves the decision of how to launch the URL to the platform
  /// implementation.
  platformDefault,

  /// Loads the URL in an in-app web view (e.g., Safari View Controller).
  inAppWebView,

  /// Passes the URL to the OS to be handled by another application.
  externalApplication,

  /// Passes the URL to the OS to be handled by another non-browser application.
  externalNonBrowserApplication,
}

/// [Open] class provide open or share content to social media or system apps
class Open {
  /// open content to browser
  static Future<bool> browser(
      {String url = "",
      OpenMode mode = OpenMode.externalNonBrowserApplication}) async {
    LaunchMode launchMode = LaunchMode.platformDefault;
    switch (mode) {
      case OpenMode.externalNonBrowserApplication:
        launchMode = LaunchMode.externalNonBrowserApplication;
        break;
      case OpenMode.externalApplication:
        launchMode = LaunchMode.externalApplication;
        break;
      case OpenMode.inAppWebView:
        launchMode = LaunchMode.inAppWebView;
        break;
      default:
        launchMode = LaunchMode.platformDefault;
        break;
    }
    try {
      return await launchUrl(Uri.parse(url), mode: launchMode);
    } catch (e) {
      return false;
    }
  }

  /// open phone dial
  static Future<bool> phone(
      {String phoneNumber = "",
      OpenMode mode = OpenMode.externalNonBrowserApplication}) async {
    return await Open.browser(url: "tel:$phoneNumber", mode: mode);
  }

  /// share content to mail
  static Future<bool> mail(
      {String toAddress = "",
      String subject = "",
      String body = "",
      OpenMode mode = OpenMode.externalNonBrowserApplication}) async {
    return await Open.browser(
        url: "mailto:$toAddress?subject=$subject&body=$body", mode: mode);
  }

  /// share content to whatsapp
  static Future<bool> whatsApp(
      {String? whatsAppNumber,
      String text = "",
      OpenMode mode = OpenMode.externalNonBrowserApplication}) async {
    if (whatsAppNumber != null && whatsAppNumber.isNotEmpty) {
      return await Open.browser(
          url: "https://api.whatsapp.com/send?phone=$whatsAppNumber&text=$text",
          mode: mode);
    } else {
      return await Open.browser(url: "whatsapp://send?text=$text", mode: mode);
    }
  }

  /// open local file (Only ANDROID, IOS)
  static Future<OpenResult> localFile({String filePath = ""}) async {
    return OpenFile.open(filePath);
  }
}
