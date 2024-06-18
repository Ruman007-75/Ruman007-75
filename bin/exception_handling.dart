import 'dart:io';

void main() {
  try {
    // throw MyException(); //nije kuno exception throw korle jemn My exception, SocketException jaa eccha
    String input = '40 jkjkj'; // 40 er kace lekha takle formate exception hoe
    int parsedValue = int.parse(input);
    print(parsedValue);
  } on MyException {
    print('this is Myexception');
  } on SocketException {
    print('this is  SocketException');
  } on FormatException {
    print('this is formate exception');
  } catch (e) {
    print(e.toString());
    print('You have an run time error');
  } finally {
    print('finally');
    //ei code ta print korbei
  }
  print('hellow world');
}

class MyException implements Exception {
  @override
  String toString() {
    // TODO: implement toString
    return 'this is return exception';
  }
}
