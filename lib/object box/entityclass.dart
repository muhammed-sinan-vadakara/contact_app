import 'package:objectbox/objectbox.dart';

@Entity()
class Contacts {
  @Id()
  int id = 0;

  String? name;
  String? number;
  String? email;
  String? image;

  Contacts({
    this.id = 0,
    required this.name,
    required this.number,
    this.image,
    this.email,
  });
}
