void main() {
  Employe employe = new Employe("Ahmed");
  print(employe.getName);
  employe.setName = "Mohamed";
  print(employe.getName);
}

class Employe {
  String name;

  Employe(this.name);

  String get getName {
    return name;
  }

  set setName(String name) {
    this.name = name;
  }

  void result() {
    print(name);
  }
}
