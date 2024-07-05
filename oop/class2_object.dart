class Monitor {
  static const String sample = 'sample-Date';

  //attribut/properties/variabls
  final String abc = 'abc';
  String companyName = '';
  String model = '';
  String _internalHardware = '3435*454';

  //constructor (class er same nam a Method hole)
  Monitor(String companyName, String model) {
    // (er vitore jaa teke all pera meter)
    //print('object');
    // print(companyName);
    //print(model);

    //print(this.companyName);jee class a ace oi class ti print
    // akon uporer companyName/model jodi ullek na kori tahole
    this.companyName = companyName;
    this.model = model;
  }

  //method
  void printModelName() {
    print(model);
  }

  int _calculatePixel() {
    return 47447 * 668;
  }

  static String getSampleDate() {
    return 'demmy';
  }
}
