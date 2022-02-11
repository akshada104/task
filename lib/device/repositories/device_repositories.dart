import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:task/app/utils/strings/string_constants.dart';
import 'package:task/data/data.dart';
import 'package:task/device/device_constants.dart';
import 'package:task/domain/domain.dart';


/// Repositories that communicate with the platform e.g. GPS
class DeviceRepository extends DomainRepository {
  /// Initialize hive
  /// initialize the hive box
  Future<void> init({bool isTest = false}) async {
    if (isTest) {
      Hive.init('HIVE_TEST');
      await Hive.openBox<dynamic>(StringConstants.appName);
    } else {
      await Hive.openBox<dynamic>(
        StringConstants.appName,
      );
    }
  }
  /// Returns the box in which the data is stored.
  Box _getBox() => Hive.box<dynamic>(StringConstants.appName);

  @override
  String getStringValue(String key) {
    var box = _getBox();
    var defaultValue = '';
    if (key == DeviceConstants.localLang) {
      defaultValue = DataConstants.defaultLang;
    }
    var value = box.get(key, defaultValue: defaultValue) as String;
    return value;
  }

  @override
  void saveValue(dynamic key, dynamic value) {
    _getBox().put(key, value);
  }

  @override
  void clearData(dynamic key) {
    _getBox().delete(key);
  }
}
