[<img src="https://techdirr.com/techdirr.png" width="200" />](https://techdirr.com)

# open_share_pro

Flutter Plugin for sharing contents to social media.You can use it share to Mail, WhatsApp And System Share UI

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/open_share_pro/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `open_share_pro` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  open_share_pro:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/techdirrdev/open_share_pro/tree/master/example) here.


### Browser

```dart
Open.browser(url: "https://techdirr.com")
```

### Phone Dial

```dart
Open.phone(phoneNumber: "+919426636120")
```

### Mail

```dart
Open.mail(toAddress: "dev@techdirr.com", subject: "techdirr", body: "techdirr dev")
```

### WhatsApp (whatsAppNumber with country code)

```dart
Open.whatsApp(whatsAppNumber: "919426636120", text: "techdirr")
```

### Local File (Only ANDROID, IOS)

```dart
Open.localFile(filePath: localFilePath)
```

