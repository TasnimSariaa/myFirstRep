class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;
  Car(this.brand, this.model, this.year, this.milesDriven){
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }


}

void main() {
  Car.numberOfCars;

  Car car1 = Car("Toyota", "Camry", 2020, 10000);
  Car car2 = Car("Honda", "Civic", 2018, 8000);
  Car car3 = Car("Ford", "Mustang", 2022, 15000);

  car1.drive(400);
  car2.drive(110);
  car3.drive(300);

  print("Car 1 - ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Miles : ${car1.getMilesDriven().round()} Age: ${car1.getAge()} years");


  print("Car 2 - ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Miles : ${car2.getMilesDriven().round()} Age: ${car2.getAge()} years");


  print("Car 3 - ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Miles : ${car3.getMilesDriven().round()} Age: ${car3.getAge()} years");


  print("Total number of cars: ${Car.numberOfCars}");
}