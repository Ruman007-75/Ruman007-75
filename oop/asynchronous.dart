//synchronous
// asynchronous etr mne // future result/error

void doSomthing() {
  print('A');
  print('B');
  print('C');
  print('D');
  print('E');
}

void anotherMethod() {
  print('New A');
  Future.delayed(Duration(seconds: 3)).then((_) {
    print('New B');
  });
  print('New C');
}

Future<int> sum(int a, int b) async {
  await Future.delayed(Duration(seconds: 10));
  return a + b;
}

Future<void> main() async {
  // anotherMethod();
  // doSomthing();
  int result = await sum(10, 34);
  print(result);
}
// 2ta main hobe na
// void main(){
//   anotherMethod();
//   doSomthing();
// }
