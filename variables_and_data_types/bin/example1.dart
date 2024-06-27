void main(List<String> args) {
  // const is unmutable variable that we specify so you cant change it
// and you cant ASSIGN another value to it
  const name = "my_name";
  print(name);
  // name="2nd name";

  // final
//  you can change it
// but you cant ASSIGN another value to it
  final age = [1, 2, 4, 5];
  age.removeAt(0);
  print(age);
  age.add(8);
  print(age);

  // cant do this :
  // age = [8,3,4,5];
  // but we can remove and add so that way we change the internall vars

  // vanilla variables : mutable
// this varibale type is changeble and assignable
  var address = "123 main St";
  print(address);
// assigning
  address = "123 2nd St";
  print(address);
// changing
  address = address.replaceAll(("main"), "blah");
  print(address);

  //dart can specify the data type in var ting
  // this you cant sign sth else other than string
  String stringg = "foo";
  // here you can assign anything and it will understand it
  // ignore: unused_local_variable
  var number = "123";
  number = stringg;
  // here you cant change it to another data type such as int

  // constant values can be assigned to a non-constant(final) value
  // but not the way around

  const number1 = 10;
  // the line down is to ignore the not errors
  // ignore: unused_local_variable
  final number2 = number1;
  // this cant be the other way arround , so the thing down is not right

  // final number3 = 20;
  // const number4=number3;

  // some cases we must tell dart what data type we are using,(rare)
  // so we use string,int,double

  // late variables:initialized only when they are used
  late final myValue = 22;
  print(myValue);
  late final yourValue = getValue();
  print(yourValue);
  // the first usage will bring its values , then only the variable will be used
  print(yourValue);

  // to force specifing data types in your code you can do it
  // from analysis_options.yaml file
  // linter:rules: -always_specify_types
  //Example
  //const String myName = "foo bar";
  // final hisName = myName;
  // print(hisName);

  // defult naming in dart is camelcase Ex: yourName
// ignore: non_constant_identifier_names
  final Wow = "wow";
  print(Wow);
// but this is bad proctice dont do it unless you have to

// Variables values
  const int someInteger = 10;
  print(someInteger);
  const double someDouble = 10.5;
  print(someDouble);
  const String someString = 'Hello';
  print(someString);
  const bool someBoolean = true;
  print(!someBoolean);
  const List<int> someList = [1, 2, 3];
  print(someList);
  const Map<String, String> someMap = {'foo': 'bar'};
  print(someMap['foo']);
  const Set<int> someSet = {1, 2, 3};
  print(someSet.length);
  const dynamic someNull = null;
  print(someNull);
  const Symbol someSymbol = #someNull;
  print(someSymbol);
}

int getValue() {
  print("getValue called");
  return 10;
}
