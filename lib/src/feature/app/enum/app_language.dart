import 'dart:io';

enum AppLanguage implements Comparable<AppLanguage> {
  kk('Қазақша', 'Kz', 'kk', '🇰🇿'),
  ru('Русский', 'Ru', 'ru', '🇷🇺'),
  en('English', 'En', 'en', '🇺🇸'),;

  const AppLanguage(
    this.title,
    this.code,
    this.localeCode,
    this.emoji,
  );

  final String title;
  final String code;
  final String localeCode;
  final String emoji;

  R when<R>({
    required R Function() kk,
    required R Function() ru,
    required R Function() en,
  }) {
    switch (this) {
      case AppLanguage.kk:
        return kk();
      case AppLanguage.ru:
        return ru();
      case AppLanguage.en:
        return en();
    }
  }

  static AppLanguage deviceLanguage() {
    final deviceLocale = Platform.localeName;
    if (deviceLocale.contains(AppLanguage.kk.localeCode)) {
      return AppLanguage.kk;
    } else {
      return AppLanguage.ru;
    }
  }

  static AppLanguage fromString(String source) =>
      AppLanguage.values.byName(source);

  @override
  int compareTo(AppLanguage other) => index.compareTo(other.index);
}
