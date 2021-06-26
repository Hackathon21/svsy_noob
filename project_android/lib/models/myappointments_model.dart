class myappointmentModel{
  static final items4= [
    Item4(
        id: 1,
        name: "Yaju Yadav",
        field: "Dental Specialist",
        city: "Lucknow",
        hospital: "PGI hospital",
        date: "18/july/2021"
    )
  ];


}
class Item4{
  final int id;
  final String name;
  final String field;
  final String city;
  final String hospital;
  final String date;

  Item4({required this.id,required this.name, required this.field, required this.city, required this.hospital, required this.date});


}

