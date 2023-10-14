import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  final int maximumRating;
  final Function(int) onRatingSelected;

  Rating(this.onRatingSelected, [this.maximumRating = 5]);

  @override
  _Rating createState() => _Rating();
}

class _Rating extends State<Rating> {
  int _currentRating = 4;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return const Icon(Icons.star, color: Color(0xFFe6323e),size: 30,);
    } else {
      return const Icon(Icons.star_border_outlined,color: Color(0xFFe6323e),size: 30,);
    }
  }

  Widget _buildBody() {
    final stars = List<Widget>.generate(widget.maximumRating, (index) {
      return GestureDetector(

        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRating;
            _currentRating = index + 1;
          });
          widget.onRatingSelected(_currentRating);
        },
      );
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: stars,
        ),
        const SizedBox(width: 15,),
        Text(_currentRating.toDouble().toString(),style: const TextStyle(
            color: Colors.white,
          fontSize: 18,
          fontFamily: 'Audiowide'
        ),)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}