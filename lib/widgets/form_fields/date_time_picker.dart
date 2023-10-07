import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class DateTimePicker extends StatefulWidget {
  final void Function(DateTime) onDateTimeSelected;

  const DateTimePicker({Key? key, required this.onDateTimeSelected})
      : super(key: key);

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime _selectedDate = DateTime.now();

  _DateTimePickerState() {
    initializeDateFormatting('en', null);
  }

  Future<void> _presentDatePicker() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      final pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedDate),
      );

      if (pickedTime != null) {
        setState(() {
          _selectedDate = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });

        widget.onDateTimeSelected(_selectedDate);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('d MMM');
    DateFormat timeFormat = DateFormat('HH:mm a');
    String formattedDate = dateFormat.format(_selectedDate);
    String formattedTime = timeFormat.format(_selectedDate);

    return Column(
      children: [
        InkWell(
          onTap: () {
            _presentDatePicker();
          },
          child: Text(
            _selectedDate != null
                ? '$formattedDate at $formattedTime'
                : 'No date and time selected',
            style: const TextStyle(
                fontSize: 14,
                color: Colors.black45,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
