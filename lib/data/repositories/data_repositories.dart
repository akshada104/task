

import 'package:task/data/data.dart';
import 'package:task/domain/domain.dart';

/// Repositories (retrieve data, heavy processing etc..)
class DataRepository extends DomainRepository {
  /// [_connectHelper] : A connection helper which will connect to the
  /// remote to get the data.
  DataRepository(this._connectHelper);

  final ConnectHelper _connectHelper;

  @override
  void clearData(dynamic key) {
    _connectHelper.toString();
    throw UnimplementedError();
  }

  @override
  String getStringValue(String key) {
    throw UnimplementedError();
  }

  @override
  void saveValue(dynamic key, dynamic value) {
    throw UnimplementedError();
  }
}
