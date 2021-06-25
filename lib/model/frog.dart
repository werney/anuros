class Frog {
  
  var name;
  var specie;
  var family;
  var image;
  var order;
  var size;
  var toxic;
  var habit;
  var habitat;
  var activity;
  var threat;
  var reproduction;
  var livein;

  Frog(this.name, this.specie);

  factory Frog.fromJson(dynamic json) {
    return Frog(json['name'] as String, json['specie'] as String);
  }

}