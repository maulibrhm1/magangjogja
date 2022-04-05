part of 'guru.dart';

class AbsensiGuru extends StatefulWidget {
  AbsensiGuru({Key? key}) : super(key: key);

  @override
  State<AbsensiGuru> createState() => _AbsensiGuruState();
}

class _AbsensiGuruState extends State<AbsensiGuru> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Container(
              child: buildDataTable(),
            )
          ],
        )
      ],
    );
  }

  Widget buildDataTable() {
    final columns = [
      'Tanggal',
      'Masuk',
      'Istirahat',
      'Izin',
      'Pulang',
      'Total'
    ];
    // return DataTable(columns: getColumns(columns), rows: getRows(absensi));
    return const SizedBox();
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
          ))
      .toList();

  List<Map> getRows(List<AbsensiMagang> absensi) => absensi
      .map((AbsensiMagang absen) => {
            // final cells = [];
            // return DataRow(cells: getCells(cells))
          })
      .toList();
}
