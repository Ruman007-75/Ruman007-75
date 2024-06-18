main(){
  int age = 11;
  // if (condition) {
  // body
  // }
  if (age <= 30) {
    print('man');
  } else if (age >= 18) {
    print('women');
  } else {
    print('child');
  }
  String userName = 'Sunny';
  if (userName == 'Sunny' && age > 20) {
    print('unerNmae is $userName');
  }
  if (userName == 'Shamim' || userName == 'Sunny') {
    print('Welcome for best effort $userName');
  }
}