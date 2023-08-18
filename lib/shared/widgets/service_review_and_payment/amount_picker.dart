import 'package:flutter/material.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/texts.dart';

class AmountPicker extends StatefulWidget {
  const AmountPicker({super.key});

  @override
  _AmountPickerState createState() => _AmountPickerState();
}

class _AmountPickerState extends State<AmountPicker> {
  double _selectedAmount = 5.0;
  double _draggedAmount = 5.0;

  void _updateDraggedAmount(double newValue) {
    setState(() {
      _draggedAmount = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // HeadLine(
          //   headline: '\$${_draggedAmount.toStringAsFixed(1)}',
          // ),
          // const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeadLine(headline: '\$2'),
              const SizedBox(width: 30),
              Draggable<double>(
                data: 2.0,
                feedback: CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.appColor.withOpacity(0.5),
                  child: Center(child: Text('\$${_selectedAmount.toStringAsFixed(1)}')),
                ),
                onDragStarted: () {
                  setState(() {
                    _draggedAmount = _selectedAmount;
                  });
                },
                onDragUpdate: (details) {
                  _updateDraggedAmount(_draggedAmount + details.delta.dx / 100);
                },
                onDragEnd: (details) {
                  setState(() {
                    _selectedAmount = _draggedAmount;
                    _draggedAmount = _selectedAmount + 1.00;
                  });
                },
                child: CircleAvatar(
                  radius: 50,
                  // backgroundColor: Colors.blue,
                  child: Center(
                    child: HeadLine(
                      headline: '\$${_selectedAmount.toStringAsFixed(1)}',
                      color: Colors.black,
                      fw: FontWeight.bold,
                      fs: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              const HeadLine(headline: '\$10'),
            ],
          ),
        ],
      ),
    );
  }
}
