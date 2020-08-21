void main(){
  var p = new Person('Rajneesh');
  
//   p.firstName='Rajneesh';
  
  p.printName();
}

class Person{
  String firstName;
  
//   making a constructor
//   Person(firstname){
//     firstName = firstname;
//   }
  
  Person(this.firstName);
  
  printName(){
    print(firstName);
  }
}

