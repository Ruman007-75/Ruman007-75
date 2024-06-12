void main(){
  try{
    String input = '40  tostdfe';
    int parsedValue = int.parse(input);
    print(parsedValue);
  } catch(e){
    print(e.toString());
  }
  print('hellow world');
}