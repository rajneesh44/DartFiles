void main(){
  var p = new Person();
  p.firstName='Rajneesh';
  p.printName();
}

class Person{
  String firstName;
  
  printName(){
    print(firstName);
  }
}

#Output: Rajneesh