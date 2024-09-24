class Car {
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year, [this.milesDriven = 0.0]) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() => milesDriven;

  String getBrand() => brand;

  String getModel() => model;

  int getYear() => year;

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car('Toyota', 'Corolla', 2015);
  Car car2 = Car('Honda', 'Civic', 2018);
  Car car3 = Car('Ford', 'Mustang', 2020);

  car1.drive(15000.0);
  car2.drive(20000.0);
  car3.drive(12000.0);

  List<Car> cars = [car1, car2, car3];
  for (Car car in cars) {
    print('Brand: ${car.getBrand()}, Model: ${car.getModel()}, '
        'Year: ${car.getYear()}, Miles Driven: ${car.getMilesDriven()}, '
        'Age: ${car.getAge()} years');
  }

  print('Total number of cars created: ${Car.numberOfCars}');
}
