//on declare les proprietes en final pour dire que ne peuvent pas etre modifiees
import 'package:tp2/tp2.dart' as tp2;

class Etudiant {
  final String nom; 
  final double moyenne; 
  Etudiant({required this.nom, required this.moyenne}); 
  bool get estAdmis => moyenne >= 10; 
  @override 
  String toString(){
    if(estAdmis){
      return '$nom - $moyenne (admis)';
    } else {
      return '$nom - $moyenne (non admis)';
    }
  } 
}

void main(){
  final etudiants = [ 
    Etudiant(nom: 'Ahmed', moyenne: 14.5), 
    Etudiant(nom: 'Sarra', moyenne: 9.0), 
    Etudiant(nom: 'Youssef', moyenne: 12.0), 
  ];
  for(Etudiant e in etudiants){
    print(e);
  }
  final admis = etudiants.where((e) =>e.estAdmis);
  for(Etudiant e in admis){
    print(e);
  }
}