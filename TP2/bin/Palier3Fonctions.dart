//les parametres nommes rendent le code plus lisible, evitent les erreurs d ordre des parametres
import 'package:tp2/tp2.dart' as tp2;

void main(){
  print(carre(5));
  print(moyenne(12,16));
  afficherFiche(nom: 'Ahmed');
  afficherFiche(nom:'Sarra' , classe: 'DSI3', moyenne:15.5);
}
int carre (int n)=> n*n;
double moyenne (double n1 , double n2){
  return (n1+n2)/2;
}
void afficherFiche({required String nom , String classe = 'Non precisee' , double? moyenne}){
  print('Nom : $nom | Classe : $classe | Moyenne : ${moyenne ?? 'Non renseignee'}');
}