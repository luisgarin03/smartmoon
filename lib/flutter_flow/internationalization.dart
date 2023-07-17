import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? frText = '',
  }) =>
      [enText, esText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // getStartedPage
  {
    'hgxnooi5': {
      'en': 'Sleep better, live better',
      'es': '',
      'fr': '',
    },
    'nx9qmvmb': {
      'en': 'Select Language',
      'es': '',
      'fr': '',
    },
    'wje7alti': {
      'en': 'Get Started',
      'es': '',
      'fr': '',
    },
    '0fuwjtl9': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // registerOrSignInPage
  {
    'btd0kfmb': {
      'en': 'Register',
      'es': '',
      'fr': '',
    },
    'an9ppgzi': {
      'en': 'Sign in',
      'es': '',
      'fr': '',
    },
    'v233z49r': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // registerPage
  {
    't87th426': {
      'en': 'Sign Up',
      'es': '',
      'fr': '',
    },
    'q1mselui': {
      'en': 'If You Need Any Support',
      'es': '',
      'fr': '',
    },
    'zp0yfjmf': {
      'en': 'Click Here',
      'es': '',
      'fr': '',
    },
    'c9pakyhw': {
      'en': 'Full Name',
      'es': '',
      'fr': '',
    },
    '74zhkkdl': {
      'en': 'Enter Email',
      'es': '',
      'fr': '',
    },
    'a2ikc8h7': {
      'en': 'Password',
      'es': '',
      'fr': '',
    },
    'e0wmwh5c': {
      'en': 'Recovery Password',
      'es': '',
      'fr': '',
    },
    '70syh2v7': {
      'en': 'Register',
      'es': '',
      'fr': '',
    },
    'urxstftt': {
      'en': 'Or',
      'es': '',
      'fr': '',
    },
    'q0rvcenu': {
      'en': 'Do You Have An Account ?',
      'es': '',
      'fr': '',
    },
    '9x6u2cxi': {
      'en': ' Sign In',
      'es': '',
      'fr': '',
    },
    '1hcyymur': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // signInPage
  {
    '5qri76dn': {
      'en': 'Sign In',
      'es': '',
      'fr': '',
    },
    'pceqmvx1': {
      'en': 'If You Need Any Support',
      'es': '',
      'fr': '',
    },
    'iqtphuem': {
      'en': ' Click Here',
      'es': '',
      'fr': '',
    },
    'ox7jcpoo': {
      'en': 'Enter Username Or Email',
      'es': '',
      'fr': '',
    },
    '3bxz235o': {
      'en': 'Password',
      'es': '',
      'fr': '',
    },
    'd1v9yltl': {
      'en': 'Recovery Password',
      'es': '',
      'fr': '',
    },
    '70syh2v7': {
      'en': 'Sign In',
      'es': '',
      'fr': '',
    },
    '1vdk5q89': {
      'en': 'Or',
      'es': '',
      'fr': '',
    },
    'kd99nt0u': {
      'en': 'Not A Member ?',
      'es': '',
      'fr': '',
    },
    'gzmbolgp': {
      'en': ' Register Now',
      'es': '',
      'fr': '',
    },
    'fbae89uh': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // songLyricsPage
  {
    'sdsokfu6': {
      'en':
          'Well, I found a woman, stronger than \n\nanyone I know\n\nShe shares my dreams, I hope that \n\nsomeday I\'ll share her home\n\nI found a lover, to carry more than just \n\nmy secrets\n\nTo carry love, to carry children of our \n\nown\n',
      'es': '',
      'fr': '',
    },
    'ix8vyozq': {
      'en': 'We are still kids, but we\'re so in love. \n',
      'es': '',
      'fr': '',
    },
    'igudgueu': {
      'en':
          'Fighting against all odds I know we\'ll be\n\nalright this time Darling, just hold my \n\nhand Be my girl, I\'ll be your man\n\nI see my future in your eyes',
      'es': '',
      'fr': '',
    },
    '1dt6vggv': {
      'en': '2:25',
      'es': '',
      'fr': '',
    },
    'us1575ix': {
      'en': '4:02',
      'es': '',
      'fr': '',
    },
    'fiahe2zp': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // userProfilePage
  {
    'g3duq29q': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // music
  {
    'hjebb4gl': {
      'en': 'name',
      'es': '',
      'fr': '',
    },
    'c3027a0r': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // Homeclean
  {
    'fuidbd53': {
      'en': 'Hey Manuel',
      'es': '',
      'fr': '',
    },
    'jia36kvt': {
      'en': 'Check out our dream products',
      'es': '',
      'fr': '',
    },
    '0g1t6nng': {
      'en': 'HSBC is getting back into consumer lending...',
      'es': '',
      'fr': '',
    },
    '808hkqhf': {
      'en': 'Jackson Hewiit',
      'es': '',
      'fr': '',
    },
    'joegdk9u': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    'q8c41z6x': {
      'en': '12h',
      'es': '',
      'fr': '',
    },
    'i6qfxf4i': {
      'en': 'HSBC is getting back into consumer lending...',
      'es': '',
      'fr': '',
    },
    '9p9csfpw': {
      'en': 'Jackson Hewiit',
      'es': '',
      'fr': '',
    },
    'qtor0mz2': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    'ft76idct': {
      'en': '12h',
      'es': '',
      'fr': '',
    },
    'bt9xk646': {
      'en': 'Music',
      'es': '',
      'fr': '',
    },
    'o23ekycj': {
      'en': 'Meditation',
      'es': '',
      'fr': '',
    },
    'wuzdpzcz': {
      'en': 'Books',
      'es': '',
      'fr': '',
    },
    'hvo09n28': {
      'en': 'Guides',
      'es': '',
      'fr': '',
    },
    'l1n5erm0': {
      'en': 'Products',
      'es': '',
      'fr': '',
    },
    'srf32h82': {
      'en': 'weather',
      'es': '',
      'fr': '',
    },
    'fm1317fd': {
      'en': 'Music',
      'es': '',
      'fr': '',
    },
    '38c4bg9f': {
      'en': 'Popular Today',
      'es': '',
      'fr': '',
    },
    'mfakmi45': {
      'en':
          'HSBC is getting back into consumer lending in the us according to...',
      'es': '',
      'fr': '',
    },
    'kw9waram': {
      'en': 'Jackson Hewiit',
      'es': '',
      'fr': '',
    },
    '1u0uvxrx': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    'jbya4sig': {
      'en': '12h',
      'es': '',
      'fr': '',
    },
    'eci7elgk': {
      'en': 'Read Now',
      'es': '',
      'fr': '',
    },
    'pdcqpaow': {
      'en':
          'HSBC is getting back into consumer lending in the us according to...',
      'es': '',
      'fr': '',
    },
    'uixp9bjs': {
      'en': 'Jackson Hewiit',
      'es': '',
      'fr': '',
    },
    'jx2ao3nv': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    '8nuw0278': {
      'en': '12h',
      'es': '',
      'fr': '',
    },
    'bxvs27an': {
      'en': 'Read Now',
      'es': '',
      'fr': '',
    },
    'r5qlycai': {
      'en':
          'HSBC is getting back into consumer lending in the us according to...',
      'es': '',
      'fr': '',
    },
    'mqgteicx': {
      'en': 'Jackson Hewiit',
      'es': '',
      'fr': '',
    },
    'kiry33kf': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    'lww76va8': {
      'en': '12h',
      'es': '',
      'fr': '',
    },
    '60s8ic0g': {
      'en': 'Read Now',
      'es': '',
      'fr': '',
    },
    'tsnke7g1': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // ProfilePage
  {
    'ugof5x73': {
      'en': 'Profile',
      'es': '',
      'fr': '',
    },
    'pb8qxrx1': {
      'en': 'alvishramani4@gmail.com',
      'es': '',
      'fr': '',
    },
    'a62rp8gf': {
      'en': 'Alvish0407',
      'es': '',
      'fr': '',
    },
    'kz03h1n8': {
      'en': '09',
      'es': '',
      'fr': '',
    },
    '7ujcq7kg': {
      'en': 'Followers',
      'es': '',
      'fr': '',
    },
    'mr44li2r': {
      'en': '19',
      'es': '',
      'fr': '',
    },
    'mumk9119': {
      'en': 'Following',
      'es': '',
      'fr': '',
    },
    'lnl44nti': {
      'en': 'PUBLIC PLAYLISTS',
      'es': '',
      'fr': '',
    },
    'zp0yfjmf': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
    },
    'mo6fkhqn': {
      'en': '101 Songs',
      'es': '',
      'fr': '',
    },
    '3rx96sgl': {
      'en': '6:00:00',
      'es': '',
      'fr': '',
    },
    'l68lv5oy': {
      'en': 'Wrap 2021',
      'es': '',
      'fr': '',
    },
    '6q1yfbkg': {
      'en': '100 Songs',
      'es': '',
      'fr': '',
    },
    'omrbym6b': {
      'en': '6:00:00',
      'es': '',
      'fr': '',
    },
    'hjddctc3': {
      'en': 'Goes Relax',
      'es': '',
      'fr': '',
    },
    'a0ye6dlx': {
      'en': '94 Songs',
      'es': '',
      'fr': '',
    },
    's9ltjk8q': {
      'en': '5:30:00',
      'es': '',
      'fr': '',
    },
    'en51z37e': {
      'en': 'JB\'s World',
      'es': '',
      'fr': '',
    },
    '3ijglgbx': {
      'en': '17 Songs',
      'es': '',
      'fr': '',
    },
    '7u1afc58': {
      'en': '58:02',
      'es': '',
      'fr': '',
    },
    'g11xjhet': {
      'en': '1 Direction',
      'es': '',
      'fr': '',
    },
    'eolumdtn': {
      'en': '21 Songs',
      'es': '',
      'fr': '',
    },
    's1v3o90k': {
      'en': '01:14',
      'es': '',
      'fr': '',
    },
    't3243bhu': {
      'en': 'Maroon 5',
      'es': '',
      'fr': '',
    },
    '8p2otlt0': {
      'en': '8 Songs',
      'es': '',
      'fr': '',
    },
    'bi5exrqo': {
      'en': '29:20',
      'es': '',
      'fr': '',
    },
    '6i5olnpo': {
      'en': 'ColdPlay\'s Age',
      'es': '',
      'fr': '',
    },
    '8x7jpji4': {
      'en': '8 Songs',
      'es': '',
      'fr': '',
    },
    'ywn49fr1': {
      'en': '35:47',
      'es': '',
      'fr': '',
    },
  },
  // FavouritePage
  {
    'rfqqqf2k': {
      'en': 'Ed Sheeran',
      'es': '',
      'fr': '',
    },
    'ucey69j7': {
      'en': '5 Album , 256 Track',
      'es': '',
      'fr': '',
    },
    '7njwfs7q': {
      'en':
          'Edward Christopher Sheeran MBE is an English singer-songwriter. Born in Halifax, West Yorkshire and raised in Framlingham, Suffolk, he began writing songs around the age of eleven.',
      'es': '',
      'fr': '',
    },
    'p20xgb5t': {
      'en': 'Albums',
      'es': '',
      'fr': '',
    },
    'wbevysro': {
      'en': '= (Tour Edition)',
      'es': '',
      'fr': '',
    },
    'drtj1nut': {
      'en': 'No.6 Collaboration ...',
      'es': '',
      'fr': '',
    },
    'i3phcmzt': {
      'en': '÷ (Deluxe)',
      'es': '',
      'fr': '',
    },
    '75615n04': {
      'en': 'x (Wembley Edition)',
      'es': '',
      'fr': '',
    },
    '6qfchw42': {
      'en': '+',
      'es': '',
      'fr': '',
    },
    'gam00czp': {
      'en': 'Songs',
      'es': '',
      'fr': '',
    },
    '8pmicze7': {
      'en': 'See More',
      'es': '',
      'fr': '',
    },
    'qdro55o6': {
      'en': 'Celestial',
      'es': '',
      'fr': '',
    },
    '4iqantl9': {
      'en': 'Pokemon x Ed Sheeran',
      'es': '',
      'fr': '',
    },
    'y3h8qxib': {
      'en': '03:29',
      'es': '',
      'fr': '',
    },
    '1dkqmt2t': {
      'en': 'Bam Bam',
      'es': '',
      'fr': '',
    },
    'rrzor42b': {
      'en': 'Camiila Cabello x Ed Sh...',
      'es': '',
      'fr': '',
    },
    '3xdw5ank': {
      'en': '03:26',
      'es': '',
      'fr': '',
    },
    'fqmbwc1f': {
      'en': 'Merry Christmas',
      'es': '',
      'fr': '',
    },
    'goa8asjs': {
      'en': 'Elton John x Ed Sheeran',
      'es': '',
      'fr': '',
    },
    '7tyv8gju': {
      'en': '03:28',
      'es': '',
      'fr': '',
    },
    'iku5iu22': {
      'en': 'TJATQ',
      'es': '',
      'fr': '',
    },
    '1qmumdr2': {
      'en': 'Tylor Swift x Ed Sheeran',
      'es': '',
      'fr': '',
    },
    'nuixc8e0': {
      'en': '03:05',
      'es': '',
      'fr': '',
    },
    '02qyv3or': {
      'en': 'Call on me',
      'es': '',
      'fr': '',
    },
    '0w2trp8v': {
      'en': 'Vianney x Ed Sheeran',
      'es': '',
      'fr': '',
    },
    'kl2crpoy': {
      'en': '03:20',
      'es': '',
      'fr': '',
    },
  },
  // UIActionBar1
  {
    'se9q3zs6': {
      'en': 'Gadgets and more..',
      'es': '',
      'fr': '',
    },
    'juyo5dr3': {
      'en': 'Shop',
      'es': '',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'wxw2h38q': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'nx9b254i': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'u1bctg5x': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'gq1t2no4': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'hje6pcf9': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'pp9ob4ye': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'y2kw4snp': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '1w91g1xd': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'xt30px0v': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'eis0yiaa': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '21z6k673': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'gjd5ejh9': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'iks11vbm': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '4b006g9u': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'g8vbho7o': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'vd1n56tz': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'si9ozxep': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '5eeacnhe': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'l2q4myt8': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'hyqljk3v': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '57jlpa3v': {
      'en': '',
      'es': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
