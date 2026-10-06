//dart inte+rdit null par defaut pour reduire les erreurs pendant l execution
import 'package:tp2/tp2.dart' as tp2;

void main() {
     String? surnom; 
     String? email = 'ahmed@iset.tn';
     // // TODO 1 : afficher le surnom, ou 'Aucun surnom' s'il est null (opérateur ??)
     print('Surnom : ${surnom ?? 'Aucun surnom'}');
     // // TODO 2 : afficher la longueur de email sans planter si email est null (?.)
      print('${email?.length ?? 0}');
     // // TODO 3 : donner une valeur à surnom, puis réafficher le TODO 1
     surnom = 'Ahmed';
     print('Surnom : ${surnom ?? 'Aucun surnom'}');
     // // TODO 4 : décommenter, lire l'erreur, puis commenter à nouveau 
     //String? vide; 
     //print(vide!.length); 
     print(decrire(null)); 
     print(decrire('Ahmed')); 
     } 
     // TODO 5 : compléter cette fonction 
     // elle renvoie 'Bonjour X' si nom n'est pas null, sinon 'Bonjour visiteur'
      String decrire(String? nom) { 
        if(nom != null) {
          return 'Bonjour $nom';
        } else {
          return 'Bonjour visiteur';
        }
      }