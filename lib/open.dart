import 'package:url_launcher/url_launcher.dart';

/// [Open] class provide open or share content to social media or system apps
class Open {
  /// open content to browser
  static Future<bool> browser({String url = ""}) async {
    return await launchUrl(Uri.parse(url));
  }

  /// open phone dial
  static Future<bool> phone({String phoneNumber = ""}) async {
    return await launchUrl(Uri.parse("tel:$phoneNumber"));
  }

  /// share content to mail
  static Future<bool> mail(
      {String toAddress = "", String subject = "", String body = ""}) async {
    return await launchUrl(
        Uri.parse("mailto:$toAddress?subject=$subject&body=$body"));
  }

  /// share content to whatsapp
  static Future<bool> whatsApp(
      {String? whatsAppNumber, String text = ""}) async {
    if (whatsAppNumber != null && whatsAppNumber.isNotEmpty) {
      return await launchUrl(
          Uri.parse(
              "https://api.whatsapp.com/send?phone=$whatsAppNumber&text=$text"),
          mode: LaunchMode.externalNonBrowserApplication);
    } else {
      return await launchUrl(Uri.parse("whatsapp://send?text=$text"));
    }
  }
}
