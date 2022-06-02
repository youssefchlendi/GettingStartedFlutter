void main() {
  Enseignant enseignant = new Enseignant("Dupont", "Jean", 123);
  Etudiant etudiant = new Etudiant("chlendi", "youssef", 12323);

  enseignant.getInformations();
  etudiant.getInformations();
}

class Personne {
  String firstName;
  String lastName;

  Personne(this.firstName, this.lastName);

  String get getFirstName => firstName;
  set setFirstName(String firstName) => this.firstName = firstName;

  String get getLastName => lastName;
  set setLastName(String lastName) => this.lastName = lastName;

  String get getFullName => '$firstName $lastName';

  void getInformations() {
    print('$firstName $lastName');
  }
}

class Enseignant extends Personne {
  int cin;
  Enseignant(firstName, lastName, this.cin) : super(firstName, lastName);

  int get getCin => cin;
  set setCin(int cin) => this.cin = cin;

  void getInformations() {
    super.getInformations();
    print('$cin');
  }
}

class Etudiant extends Personne {
  int numIns;
  Etudiant(firstName, lastName, this.numIns) : super(firstName, lastName);

  int get getnumIns => numIns;
  set setnumIns(int numIns) => this.numIns = numIns;

  void getInformations() {
    super.getInformations();
    print('$numIns');
  }
}
