import 'package:expense/widgets/form_fields/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:icons_plus/icons_plus.dart';

class CreateExpense extends StatefulWidget {
  const CreateExpense({Key? key}) : super(key: key);

  @override
  _CreateExpenseState createState() => _CreateExpenseState();
}

class _CreateExpenseState extends State<CreateExpense> {
  final _amountController = TextEditingController();
  final _dateController = TextEditingController();
  final _categoryController = TextEditingController();
  final _notesController = TextEditingController();

  final CurrencyTextInputFormatter _formatter = CurrencyTextInputFormatter(
      locale: 'IN', decimalDigits: 0, turnOffGrouping: true, symbol: '₹');

  String _note = '';
  bool _noteAdded = false;
  bool _showNoteField = false;

  @override
  void dispose() {
    _amountController.dispose();
    _dateController.dispose();
    _categoryController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _toggleNoteField() {
    setState(() {
      _showNoteField = !_showNoteField;
    });
  }

  void _saveNote() {
    final note = _notesController.text;
    if (note.isNotEmpty) {
      setState(() {
        _note = note;
        _noteAdded = true;
        _showNoteField = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Center(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              "Cancel",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
          ),
        ),
        title: const Text(
          'Expense',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Onset',
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Center(
                child: TextFormField(
                  inputFormatters: <TextInputFormatter>[_formatter],
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  showCursor: false,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 96,
                    fontFamily: 'Onset',
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    hintText: '₹0.00',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DateTimePicker(
                  onDateTimeSelected: (dateTime) {
                    setState(() {});
                  },
                ),
                const SizedBox(width: 8),
                const Icon(
                  BoxIcons.bx_x_circle,
                  size: 4,
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    _toggleNoteField();
                  },
                  child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _noteAdded
                          ? const Text(
                              'Note Added',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          : const Text(
                              'Add a Note',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: 400,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: _showNoteField
                  ? TextField(
                      minLines: 1,
                      maxLines: 4,
                      controller: _notesController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(
                              color: Colors.black38,
                            )),
                        hintText: 'Enter a note',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _note = value;
                        });
                      },
                      onSubmitted: (value) {
                        _saveNote();
                      },
                    )
                  : Container(),
            )

            // Other form fields or widgets can be added here
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: Colors.black26, width: 1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Text('Payment'),
            ),
            InkWell(
              onTap: () {},
              child: Text('Category'),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                  border: const Border.fromBorderSide(
                    BorderSide(
                      color: Colors.black26,
                      width: 1,
                    ),
                  ),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
