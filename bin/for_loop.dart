void main(){

  for(int i=0; i<=10; i=i+1 ){
  print(i);

  if (i==5){

    continue;
  }
  if (i == 8){
    break;
  }

  greeting();

  }

  int h = 1;
  while (h <=5 ){
    print(h);
    h++;
  }
  List<String> students=[

    'arafin',
    'shuvo',
    'Ruman',
    'Shaki'
  ];
  for( int i=0; i<students.length; i++){
   // print(students[i]);
    print('students $i: ${students[i]}');
  }
  // for in 
  for (String student in students){
    print('student name : $student');
  };
  students.forEach((stu) {
    print('stu');
  });
  Map<String, Map<String, String>> friends = {
    'ruman': {'address': 'Barishal', 'age': '30',},
    'sumon': {'address': 'Sylhet', 'age': '36',},
    'minoj': {'address': 'Dhka', 'age': '40',},
    'salik': {'address': 'CTG', 'age': '50',},
    'Sujon': {'address': 'CTG', 'age': '60',}


  };


for (String key in friends .keys){
  print('My friends name is $key. Address: ${friends[key]!['address']} Age: ${friends [key]!['age']}');
}
for (Map<String, String> details in friends.values){
  print('details');
  }
}

// 01705432931
void greeting(){
  print('hlw how are you');
  print('welcome to my chanel');
  print('please welcome to ahamed reza khan');
}
