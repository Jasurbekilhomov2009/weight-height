import 'dart:io';

void main() {
  print('Введите ваш вес в кг:');
  double weight = double.parse(stdin.readLineSync()!);
  
  print('Введите ваш рост в метрах:');
  double height = double.parse(stdin.readLineSync()!);
  
  double bmi = calculateBMI(weight, height);
  
  print('Ваш индекс массы тела (BMI) равен $bmi');
  
  if (bmi < 18.5) {
    print('У вас недостаточный вес');
  } else if (bmi < 25) {
    print('У вас нормальный вес');
  } else if (bmi < 30) {
    print('У вас избыточный вес');
  } else {
    print('У вас ожирение');
  }
}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}