part of 'admin.dart';

class KegiatanAdmin extends StatefulWidget {
  KegiatanAdmin({Key? key}) : super(key: key);

  @override
  State<KegiatanAdmin> createState() => _KegiatanAdminState();
}

class _KegiatanAdminState extends State<KegiatanAdmin> {
  TextEditingController catatanController = TextEditingController();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String dateNote = "Today";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: Column(
                    children: [
                      TableCalendar(
                        firstDay: DateTime.utc(2022),
                        lastDay: DateTime.utc(2099),
                        focusedDay: _focusedDay,
                        calendarFormat: _calendarFormat,
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          if (!isSameDay(_selectedDay, selectedDay)) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay = focusedDay;

                              dateNote = DateFormat.yMMMEd()
                                  .format(_selectedDay!)
                                  .toString();
                            });
                          }
                        },
                        onFormatChanged: (format) {
                          if (_calendarFormat != format) {
                            setState(() {
                              _calendarFormat = format;
                            });
                          }
                        },
                        onPageChanged: (focusedDay) {
                          _focusedDay = focusedDay;
                        },

                        // style calendar
                        startingDayOfWeek: StartingDayOfWeek.monday,
                        calendarStyle: CalendarStyle(
                          selectedDecoration: BoxDecoration(
                            color: "99CCFF".toColor(),
                            shape: BoxShape.rectangle,
                          ),
                          todayDecoration: BoxDecoration(
                            color: "C6EED8".toColor(),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    dateNote,
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: 270,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: "EDEDED".toColor(),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Name",
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: "EDEDED".toColor(),
                    ),
                    child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        controller: catatanController,
                        decoration: const InputDecoration(
                          hintText: "Tambah Catatan",
                          border: InputBorder.none,
                        )),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          height: 30,
                          width: 85,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  debugPrint("No");
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        "C4C4C4".toColor()),
                              ),
                              child: Text("No",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500))),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          height: 30,
                          width: 85,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                debugPrint("Yes");
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  "3DC484".toColor()),
                            ),
                            child: Text(
                              "Yes",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            )
          ],
        )
      ],
    );
  }
}
