// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeyweatherApiKey = [
    3620506746,
    2973697687,
    2263586300,
    3890773714,
    2224801501,
    4096086001,
    4088068001,
    3174510029,
    1581060230,
    2051648312,
    3924548904,
    3103649602,
    1338831014,
    1749553950,
    4104751794,
    2775366312,
    3885999160,
    3752998507,
    148637677,
    1432268066,
    3825166671,
    773093383,
    2243125881,
    312151268,
    344535622,
    3602739462,
    1579340544,
    172288367,
    2099290144,
    786381756,
    3356611039,
    2431220872
  ];
  static const List<int> _envieddataweatherApiKey = [
    3620506699,
    2973697700,
    2263586250,
    3890773739,
    2224801465,
    4096085909,
    4088067991,
    3174509999,
    1581060275,
    2051648345,
    3924548941,
    3103649653,
    1338831006,
    1749554040,
    4104751825,
    2775366289,
    3885999105,
    3752998494,
    148637663,
    1432268048,
    3825166713,
    773093430,
    2243125784,
    312151174,
    344535679,
    3602739559,
    1579340641,
    172288349,
    2099290131,
    786381706,
    3356611005,
    2431220924
  ];
  static final weatherApiKey = String.fromCharCodes(
    List.generate(_envieddataweatherApiKey.length, (i) => i, growable: false)
        .map((i) => _envieddataweatherApiKey[i] ^ _enviedkeyweatherApiKey[i])
        .toList(growable: false),
  );
}
