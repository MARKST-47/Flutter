main(){
    printChefsName(getChefFromDb, 4);
}
void printChefsName(String Function(int id) getChefFromDb,int id){
    String name=getChefFromDb(id);
    print(name);
}
String getChefFromDb(int id){
    switch(id){
        case 1:
            return "Mark";
            break;
        case 2:
            return "Hans";
            break;
        case 3:
            return "Thomas";
            break;
        default:
            return "No name found";

    }
}