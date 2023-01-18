import 'package:chaleno/chaleno.dart';

Future<dynamic> verifyData(cellNumberArg, nameArg, surnameArg) async {
  String fullNameForm = nameArg.toUpperCase() + ' ' + surnameArg.toUpperCase();
  var parser =
      await Chaleno().load('http://cedula.buholegal.com/${cellNumberArg}/');

  Result? validId = parser?.querySelector(
      "div.pl-0:nth-child(1) > div:nth-child(2) > p:nth-child(7)");
  Result? title = parser?.getElementById('title');

  if (validId?.text == null) {
    Result? fullName = parser?.querySelector("div[class^='card-header'] h3");
    Result? degree = parser?.querySelector(
        "div.p-0:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(3) tr:nth-child(2) td");
    String? name = fullName?.text;
    name = name?.trimLeft();

    print(name == fullNameForm);
    return name == fullNameForm;
  } else {
    print("Invalid ID");
    return false;
  }
}
