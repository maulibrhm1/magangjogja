part of 'models.dart';

class PesananLaundry extends Equatable {
  final id;
  final username;
  final status;

  PesananLaundry({
    required this.id,
    required this.username,
    required this.status,
  });

  List<Object> get props => [
        id,
        username,
        status,
      ];
}

List<PesananLaundry> laundry = [
  PesananLaundry(id: 1, username: "Joko", status: "baru"),
  PesananLaundry(id: 2, username: "Agus", status: "proses"),
  PesananLaundry(id: 3, username: "Tutik", status: "proses"),
  PesananLaundry(id: 4, username: "Adel", status: "baru"),
];
