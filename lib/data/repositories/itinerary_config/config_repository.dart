
import '../../../utils/result.dart';

abstract class ConfigRepository<T> {

  Future<Result<T>> getConfig();
  Future<Result<void>> setConfig(T config);
  Future<Result<void>> clearConfig();
}