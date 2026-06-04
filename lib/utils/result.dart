//Result es una abstracción para manejar resultados de operaciones asíncronas sin lanzar excepciones.
// Esto evita el uso de try/catch en muchas partes del código
sealed class Result<T> {
  const Result();

  const factory Result.ok(T value) = Ok._;

  const factory Result.error(Exception error) = Error._;


  bool get isSuccess => this is Ok<T>;
  bool get isFailure => this is Error<T>;


  T? get value => this is Ok<T> ? (this as Ok<T>).value : null;
  Exception? get error => this is Error<T> ? (this as Error<T>).error : null;
}

// función devuelve un objeto Result si la operación fue exitosa.
final class Ok<T> extends Result<T> {
  const Ok._(this.value);

  @override
  final T value;

  @override
  String toString() => 'Result<$T>.ok($value)';
}

// función devuelve un objeto Result si la operación falló.
final class Error<T> extends Result<T> {
  const Error._(this.error);
  @override
  final Exception error;

  @override
  String toString() => 'Result<$T>.error($error)';
}