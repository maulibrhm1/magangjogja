part of 'models.dart';

class Users extends Equatable {
  final int id;
  final String name;
  final int statusPosisi;
  final String saldo;

  Users(
      {required this.id,
      required this.name,
      required this.statusPosisi,
      required this.saldo});

  @override
  List<Object> get props => [
        id,
        name,
        statusPosisi,
        saldo,
      ];
}

List<Users> user = [
  Users(id: 0, name: "Ghege", statusPosisi: 1, saldo: "500"),
];
