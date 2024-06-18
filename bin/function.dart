main(){
  //argument
  welcomeMessage('alamin','Sylhet', 64);
  welcomeMessage('fahim', 'CTG');
  welcomeMessage('nurul', 'Dhaka');
  int r= add( firstNo: 100, secondNo: 38);
  int s= add( firstNo: 45, secondNo: 45);
  int t = add(firstNo: 400, secondNo: 45);
  print(r);
  print(s);
  print(t);
}
//return type message params
 welcomeMessage(String name, String addres, [int age =0]) {
  print('welcome to team $name');
  print('welcome to anather person');
  print('welcome to our party');
  print('welcome to my journey');
}
add ({required int firstNo, required int secondNo} ){
  int result = firstNo+secondNo;
  return result;
}
