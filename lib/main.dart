void main() {
  String telexString = 'hfdawhwhcoomdd';
  String unicodeString = decodeTelex(telexString);
  print('dđ : $unicodeString');
}

String decodeTelex(String chuoi) {
  Map<String, String> telexDecodeMap = {
    'aw': 'ă',
    'aa': 'â',
    'ee': 'ê',
    'oo': 'ô',
    'ow': 'ơ',
    'uw': 'ư',
    'dd': 'đ',
    'AW': 'Ă',
    'AA': 'Â',
    'EE': 'Ê',
    'OO': 'Ô',
    'OW': 'Ơ',
    'UW': 'Ư',
    'DD': 'Đ'
  };

  for (String key in telexDecodeMap.keys) {
    chuoi = chuoi.replaceAll(key, telexDecodeMap[key]!);
  }

  return chuoi;
}
