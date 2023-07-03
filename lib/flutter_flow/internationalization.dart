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
    '2tw8suus': {
      'en': '\nGet Started',
      'es': '',
      'fr': '',
    },
    '0m83uv0t': {
      'en': 'Get Started',
      'es': '',
      'fr': '',
    },
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
    '0fuwjtl9': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // registerOrSignInPage
  {
    'v233z49r': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // registerPage
  {
    't87th426': {
      'en': 'Register',
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
    '2tizjqvj': {
      'en': 'Create Account',
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
    'onfwna0b': {
      'en': '\nGet Started',
      'es': '',
      'fr': '',
    },
    'q1cr3rxw': {
      'en': 'Get Started',
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
    'gqtiz96i': {
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
  // mainPage
  {
    'vbhvk4j6': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // songDetailsPage
  {
    '48hyp0lg': {
      'en': 'Now Playing',
      'es': '',
      'fr': '',
    },
    'nhl3sews': {
      'en': '2:25',
      'es': '',
      'fr': '',
    },
    '0bwykolp': {
      'en': '4:02',
      'es': '',
      'fr': '',
    },
    '1trdirx2': {
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
    'ph5hh7bz': {
      'en': 'Wrap 2022',
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
  // HomePage
  {
    '7grx8kbj': {
      'en': 'New Song',
      'es': '',
      'fr': '',
    },
    '2dfjo0nc': {
      'en': 'F64',
      'es': '',
      'fr': '',
    },
    '8jxrig4q': {
      'en': 'Ed Sheeran',
      'es': '',
      'fr': '',
    },
    '988l9f7l': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
    },
    'qivfalfi': {
      'en': 'Albums',
      'es': '',
      'fr': '',
    },
    'pln6tnao': {
      'en': 'Artists',
      'es': '',
      'fr': '',
    },
    'd6bnfnyc': {
      'en': 'Podcasts',
      'es': '',
      'fr': '',
    },
    'nnym737u': {
      'en': 'Playlists',
      'es': '',
      'fr': '',
    },
    'p63aihyo': {
      'en': 'If I Can Dream',
      'es': '',
      'fr': '',
    },
    'lzznz5ux': {
      'en': 'Elvis Presely',
      'es': '',
      'fr': '',
    },
    'bdge4nmz': {
      'en': 'Love Yourself',
      'es': '',
      'fr': '',
    },
    'p1gqigra': {
      'en': 'Justin Bieber',
      'es': '',
      'fr': '',
    },
    'dndl4ee4': {
      'en': 'Fix You',
      'es': '',
      'fr': '',
    },
    'dpd4aerc': {
      'en': 'Coldplay',
      'es': '',
      'fr': '',
    },
    'gxzwuwvn': {
      'en': 'As It Was',
      'es': '',
      'fr': '',
    },
    '0vcblwsp': {
      'en': 'Harry Styles',
      'es': '',
      'fr': '',
    },
    'jm9445b6': {
      'en': 'Albums',
      'es': '',
      'fr': '',
    },
    '99k6hyk0': {
      'en': 'See More',
      'es': '',
      'fr': '',
    },
    'on8cy7us': {
      'en': 'Elvis 30 #1 Hits',
      'es': '',
      'fr': '',
    },
    '1iambqa3': {
      'en': 'Elvis Presely',
      'es': '',
      'fr': '',
    },
    'qjclos1a': {
      'en': '1:18:00',
      'es': '',
      'fr': '',
    },
    'rrv8xchs': {
      'en': 'Fine Line',
      'es': '',
      'fr': '',
    },
    'xrbxf5nj': {
      'en': 'Harry Styles',
      'es': '',
      'fr': '',
    },
    'sorg56u6': {
      'en': '46:43',
      'es': '',
      'fr': '',
    },
    '4ifwapi7': {
      'en': 'FOUR (Deluxe)',
      'es': '',
      'fr': '',
    },
    '4gy7wswa': {
      'en': 'One Direction',
      'es': '',
      'fr': '',
    },
    '67v5ppq4': {
      'en': '57:15',
      'es': '',
      'fr': '',
    },
    'mffgqtpg': {
      'en': 'V (Asis Tour)',
      'es': '',
      'fr': '',
    },
    'y7eb3apf': {
      'en': 'Maroon 5',
      'es': '',
      'fr': '',
    },
    'giwx9cec': {
      'en': '1:18:00',
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
  // Miscellaneous
  {
    't3j0tq11': {
      'en': 'Button',
      'es': '',
      'fr': '',
    },
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
