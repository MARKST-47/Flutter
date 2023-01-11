//first

//second 

void main() {
  print("Good Morning!");
  var foodItem = "Cake";
  String foodSource = "Cake Factory";
  int FoodCount = 4;
  double foodPrice = 50.5;
  bool isFresh = true;
  dynamic MyNum = 9;
  MyNum = "nine";
  String m = "Hello";
  String n = "Mark!";
  String news = "$m $n";
  print(news);
  String ans="";
  for(int i=0;i<10;i++){
    ans+="$i";
  }
  print(ans);
  printCost();
  printStr();
}
void printCost(){
  String foodItem="Paneer | 300.5";
  int i;
  String name="";
  for(i=0;i<foodItem.length;i++){
    if(foodItem[i]=='|' || foodItem[i]==' '){
      if(foodItem[i]==' ')
        i=i+2;
      else
        i++;
      break;
    }
    else
      name+=foodItem[i];
  }
  String cost="";
  i++;
  for(;i<foodItem.length;i++){
    cost+=foodItem[i];
  }
  print("$name has cost of $cost");
  List<String> myStr=["Cake", "Pastry","Pasta","Cake"];
  myStr.removeWhere((element)=>(element=='Cake'));
  myStr.add('Butter');
  myStr.sort();
  myStr.forEach((element){
    print(element);
  });
  List<String> upList=myStr.map((e)=>e+" Food item").toList();
  print(upList);
  List<int> nList=myStr.map((e)=>e.length).toList();
  print(nList);
}
void printStr() {
  List<String> strList = ["Pasta | 40.5","Pizza | 700", "Macroni | 67.5"];
  
  strList.map((e) {
    String name = e.split(" | ")[0].trim();
    double price = double.parse(e.split(" | ")[1].trim());
    double discountedPrice = price * 0.8;
    print("$name is of cost $price and the discounted cost is $discountedPrice.");
  });
}
