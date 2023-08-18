import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final int maxRating;
  final int currentRating;
  final Function(int) onChanged;

  const StarRating({
    required this.maxRating,
    required this.currentRating,
    required this.onChanged,
  });

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _selectedRating = 0; // Added to track the selected rating

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        widget.maxRating,
        (index) {
          bool isFilled = index < _selectedRating; // Use _selectedRating
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedRating = index + 1; // Update the selected rating
                widget.onChanged(
                    _selectedRating); // Notify the parent about the change
              });
            },
            child: Icon(
              Icons.star,
              size: 50,
              color: isFilled ? Colors.amber : Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
