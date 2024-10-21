import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  //pushNamed
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  //pushReplacementNamed
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  //pushNamedAndRemoveUntil
  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate,
        arguments: arguments);
  }
  void pop()=>Navigator.of(this).pop();
}
