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
  List<String> windowScreens=["zoom","music","chrome","notes"];
  pullScreenToFront(windowScreens,2);
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
  
  List<String> myAns = strList.map((e) {
    String name = e.split(" | ")[0].trim();
    double price = double.parse(e.split(" | ")[1].trim());
    double discountedPrice = price * 0.8;
    return("$name is of cost $price and the discounted cost is $discountedPrice.");
  }).toList();
  print(myAns);
}
void swap(String a, String b) {
  String temp = a;
  a = b;
  b = temp;
}
void pullScreenToFront(List<String> winScreen,int index){
  int count=0;
  for(int i=0;i<winScreen.length;i++){
    if(winScreen[i]!=winScreen[index]){
      swap(winScreen[index],winScreen[count]);
      count++;
    }
  }
  for(int i=0;i<winScreen.length;i++){
    print(winScreen[i]);
  }
}

