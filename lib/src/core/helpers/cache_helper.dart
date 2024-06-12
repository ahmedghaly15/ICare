import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  late final SharedPreferences _sharedPreferences;

  CacheHelper(this._sharedPreferences);

  Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is bool) return await _sharedPreferences.setBool(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);

    return await _sharedPreferences.setDouble(key, value);
  }

  bool? getBoolData({required String key}) {
    return _sharedPreferences.getBool(key);
  }

  int? getIntData({required String key}) {
    return _sharedPreferences.getInt(key);
  }

  String? getStringData({required String key}) {
    return _sharedPreferences.getString(key);
  }

  Future<bool> removeData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }

  Future<bool> clearData() async {
    return await _sharedPreferences.clear();
  }

  Future<void> clearPreferencesExcept(List<KeyAndType> keepKeys) async {
    Map<String, dynamic> preservedValues = {};

    // Preserve values for each key to be kept
    for (KeyAndType kt in keepKeys) {
      dynamic value;
      switch (kt.valueType) {
        case 'String':
          value = getStringData(key: kt.key);
          break;
        case 'bool':
          value = getBoolData(key: kt.key);
          break;
        case 'int':
          value = getIntData(key: kt.key);
          break;
        default:
          throw Exception('Unsupported value type');
      }
      if (value != null) {
        preservedValues[kt.key] = value;
      }
    }
    // Clear all data
    await clearData();
    await clearAllSecuredData();
    // Restore the preserved values
    for (var entry in preservedValues.entries) {
      await saveData(key: entry.key, value: entry.value);
    }
  }

  /// Saves a [value] with a [key] in the FlutterSecureStorage.
  Future<void> setSecuredString(String key, String value) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint(
        "FlutterSecureStorage : setSecuredString with key : $key and value : $value");
    await flutterSecureStorage.write(key: key, value: value);
  }

  /// Gets an String value from FlutterSecureStorage with given [key].
  Future<String?> getSecuredString(String key) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('FlutterSecureStorage : getSecuredString with key :');
    return await flutterSecureStorage.read(key: key) ?? '';
  }

  /// Removes all keys and values in the FlutterSecureStorage
  Future<void> clearAllSecuredData() async {
    debugPrint('FlutterSecureStorage : all data has been cleared');
    const flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.deleteAll();
  }
}

class KeyAndType {
  final String key;
  final String valueType;

  const KeyAndType(this.key, this.valueType);
}
