import 'package:tp2/tp2.dart' as tp2;

class Cours {
  final String nom;
  final double coefficient;
  final double note;

  Cours({
    required this.nom,
    required this.coefficient,
    required this.note,
  });
}

void main() {
  final cours = [
    Cours(nom: 'Dart', coefficient: 2, note: 15),
    Cours(nom: 'Java', coefficient: 3, note: 14),
    Cours(nom: 'Base de données', coefficient: 2, note: 17),
    Cours(nom: 'Réseaux', coefficient: 1, note: 12),
  ];
  double sommeNotes = 0;
  double sommeCoefficients = 0;
  for (Cours c in cours) {
    sommeNotes = sommeNotes + (c.note * c.coefficient);
    sommeCoefficients = sommeCoefficients + c.coefficient;
  }
  double moyenne = sommeNotes / sommeCoefficients;
  print('Moyenne pondérée : ${moyenne.toStringAsFixed(2)}');
  Cours meilleur = cours[0];
  for (Cours c in cours) {
    if (c.note > meilleur.note) {
      meilleur = c;
    }
  }
  print('Meilleure note : ${meilleur.nom} avec ${meilleur.note}');
}