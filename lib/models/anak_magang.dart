part of 'models.dart';

class AnakMagang extends Equatable {
  final int id;
  final String name;

  AnakMagang({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [
        id,
        name,
      ];
}

List<AnakMagang> daftarAnak = [
  AnakMagang(id: 1, name: "ADUH"),
  AnakMagang(id: 2, name: "WAH"),
  AnakMagang(id: 3, name: "OEOEOE"),
  AnakMagang(id: 4, name: "PQRS")
];
