library universalparsetype;

///
/// Author: ivankarbashevskyi@gmail.com
/// Date: 12.06.2020
///
class Parse {

  static universal<T>(value, {bool required: false, bool showPrint: false}) {

    if (required) {

      assert(value != null);

    }

    if (showPrint) {

      print('******* Parse.universal ******');
      print("value: $value");
      print("value.runtimeType == T: ${value.runtimeType == T}");
      print("${value.runtimeType} == ${T}");
      print('*******************');

    }

    if (value == null || value.toString().toLowerCase() == 'null') {

      return null;

    }

    if (value.runtimeType == T) {

      return value;

    }

    // TODO add new types like: List, Map, bool.

    value = value.toString();

    switch(T) {

      case String:
        return value.isEmpty ? null : value;
        break;
      case int:
        return int.tryParse(value);
        break;
      case double:
        return double.tryParse(value);
        break;

    }

  }

}
