void main() {
  print(formatName("Максим", "Москаленко"));
  print(formatName("Максим", "Москаленко", middlename: "Олегович"));

  print(calculate(6, 2, "*"));
  print(calculate(5, 1, "-"));
  print(calculate(4, 3, "+"));
  print(calculate(8, 2, "/"));
  print(calculate(9, 0, "/"));

  countSigns([1,4,-3,0,2,6,1,0,-4,-3]);
  List<int> list_num = transformList([1,4,6,7,9,-3,2], (x) => x - 2);
}

//Задание 1
String? formatName(String name, String lastname, {String? middlename}) {
  if (middlename != null) {
    return ("$lastname $name $middlename");
  }

  else {
    return ("$lastname $name");
  }
}

//Задача 2
double? calculate(double num1, double num2, String operation) {
  switch (operation) {
    case "+":
      return(num1+num2);
    case "-":
      return(num1-num2);
    case "*":
      return(num1*num2);
    case "/":
      if (num2 == 0) {
        return null;
      }

      else {
        return (num1/num2);
      }
  }
}

  //Задача 3
void countSigns(List<int> list_numbers) {
  int positive_num = 0;
  int negative_num = 0;
  int zero = 0;
  for (int number in list_numbers) {
    if (number > 0) {
      positive_num++;
    }

    else if (number < 0) {
      negative_num++;
    }

    else if (number == 0) {
      zero++;
    }
  }

  print("Кол-во положительных: $positive_num");
  print("Кол-во отрицательных: $negative_num");
  print("С нулевым значением: $zero");
}

//Задание 4
List<int> transformList(List<int> numbers, int Function(int) preobraz) {
  List <int> new_numbers = [];
  for (int number in numbers) {
    new_numbers.add(preobraz(number));
  }
  return new_numbers;
}

//Задание 5

