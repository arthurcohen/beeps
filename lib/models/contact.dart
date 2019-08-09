class Contact {
  int _id;
  String name;
  List<String> numbers;
  DateTime nextCallDate;

  Contact(this._id, this.name, this.numbers, this.nextCallDate);

  int get id => _id;
}
