

main() {
  //list < type of Date> variable name = ['Rifat' 'mira'];
  List<String> studentList = ['Rifat', 'ruman'];
  print(studentList);
  studentList.add('Saju');
  studentList.add('Sunny');
  studentList.add('Rubel');
  studentList.add('Sumon');
  print(studentList);
  studentList.addAll(['Moinul', 'rabbi']);
  print(studentList);
  studentList.remove('Moinul');
  print(studentList);
  print(studentList[2]); // fixed number print kra jay
  print(studentList.first);
  studentList.insert(2, 'Saju');
  print(studentList);
  studentList.insertAll(1, ['mahfuj', 'mahmud']);
  print(studentList);
}
