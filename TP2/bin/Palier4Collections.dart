//dans une liste on recupere les valeurs a travers leurs positions tandis que dans une map on recupere les valeurs avec ses cles car elle est sous forme cle-valeur
import 'package:tp2/tp2.dart' as tp2;

void main(){
  List<int> notes = [12 , 8 , 15 , 17 , 9];
  notes.add(11);
  print("${notes.length} notes");
  for (int i in notes){
    print(i);
  }
  List <int> notes2 = notes.where((n)=> n >= 10).toList();
  print("Notes >= 10 : $notes2");
  int sum = 0;
  for(int i in notes){
    sum += i;
  }
  double moyenne = sum / notes.length;
  print("moyenne : $moyenne");
  Map <String , int> ages = {'Ahmed': 22 , 'Sarra' : 21};
  ages['Youssef'] = 23;
  ages.forEach((key , value) {
    print('$key a $value ans');
  });
}