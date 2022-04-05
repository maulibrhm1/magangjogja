part of 'models.dart';

class AbsensiMagang extends Equatable {
  final int id;
  final String masuk;
  final String istirahat;
  final String izin;
  final String pulang;
  final String total;

  AbsensiMagang({
    required this.id,
    required this.masuk,
    required this.istirahat,
    required this.izin,
    required this.pulang,
    required this.total,
  });

  @override
  List<Object> get props => [
        id,
        masuk,
        istirahat,
        izin,
        pulang,
        total,
      ];
}

final allTIme = <AbsensiMagang>[
  AbsensiMagang(
      id: 1,
      masuk: "09.00",
      istirahat: "12.00",
      izin: "",
      pulang: "17.00",
      total: "8"),
  AbsensiMagang(
      id: 1,
      masuk: "09.00",
      istirahat: "12.00",
      izin: "",
      pulang: "17.00",
      total: "8")
];
