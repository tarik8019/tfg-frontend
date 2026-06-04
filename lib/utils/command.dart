import 'dart:async';
import 'package:flutter/foundation.dart';
import 'result.dart';

// comando sin parámetros
typedef CommandAction0<T> = Future<Result<T>> Function();
//comando con un parámetro.
typedef CommandAction1<T, A> = Future<Result<T>> Function(A);
// comando con dos parámetros
typedef CommandAction2<T, A, B> = Future<Result<T>> Function(A, B);

//Command representa una acción que puede ejecutarse y notificar su estado si está ejecutándose, si terminó bien o con error...
//Es un patrón común en MVVM, especialmente en Flutter, para enlazar botones o eventos de UI con operaciones asíncronas.
// Centraliza la lógica de ejecución.
// Facilita el data binding con la UI.
// Evita duplicar lógica de carga, error y estado.
// Hace el código más declarativo (ideal para MVVM o Flutter Clean Architecture).
// La UI solo ve Command.running, Command.completed, Command.error y Command.result
abstract class Command<T> extends ChangeNotifier {
  Command();

// running = mostrar loading (Result)
//completed =  mostrar datos (Result)
//error = mostrar mensaje (Result)
  bool _running = false;
  bool get running => _running;
  Result<T>? _result;
  bool get error => _result is Error;
  bool get completed => _result is Ok;
  Result? get result => _result;
  void clearResult() {
    _result = null;
    notifyListeners();
  }
  Future<void> _execute(CommandAction0<T> action) async {

    if (_running) return;
    _running = true;
    _result = null;
    notifyListeners();

    try {
      _result = await action();
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}

class Command0<T> extends Command<T> {
  Command0(this._action);

  final CommandAction0<T> _action;
  Future<void> execute() async {
    await _execute(_action);
  }
}

class Command1<T, A> extends Command<T> {
  Command1(this._action);

  final CommandAction1<T, A> _action;
  Future<void> execute(A argument) async {
    await _execute(() => _action(argument));
  }
}

class Command2<T, A, B> extends Command<T> {
  Command2(this._action);

  final CommandAction2<T, A, B> _action;
  Future<void> execute(A arg1, B arg2) async {
    await _execute(() => _action(arg1, arg2));
  }
}