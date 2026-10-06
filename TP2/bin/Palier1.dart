import 'package:tp2/tp2.dart' as tp2;

void main() { 
  String nom="Azyyz";
  int age=20;
  double moyenne=15.567;
  bool inscrit=true;
  const tva = 0.19; 
  final anneeCourante = DateTime.now().year ;
  print('Je m appelle $nom, j ai $age ans.'); 
  print('Ma moyenne est :${moyenne.toStringAsFixed(2)}');
  /// tva = 0.20; Cela donne une erreur car tva esst une constante
  print('Annee : $anneeCourante');
  ///la valeur d une variable const ne peut pas etre modifiee et connue des le debut de compilation
  /// tandis que la valeur d une variable final final peut etre connue a l execution et ne peut pas etre modifiee apres sa declaration  
}