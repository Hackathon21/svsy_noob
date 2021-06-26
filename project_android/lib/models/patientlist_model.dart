class PatientModel{
  static final items= [
    Item(
      id: 1,
      name: "Yaju Yadav",
      age: 18,
      disease: "ChickenPox",
      date: "18/july/2021",
    )
  ];


}
class Item{
  final int id;
  final String name;
  final int age;
  final String disease;
  final String date;

  Item({required this.id,required this.name, required this.age, required this.disease, required this.date});


}

