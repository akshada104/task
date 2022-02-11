
import 'package:task/domain/domain.dart';

/// Use case for getting the data from local database
class LocalUsecases {
  /// [_repository] : takes the repository to get the data
  LocalUsecases(this._repository);

  final Repository _repository;

  /// Get the string value for the [key].
  String getStringValue(String key) => _repository.getStringValue(key);

  /// Save data to the key
  void saveValue(dynamic key, dynamic value) {
    _repository.saveValue(key, value);
  }

  /// Clear data for the [key] locally.
  void clearData(dynamic key) {
    _repository.clearData(key);
  }
}
