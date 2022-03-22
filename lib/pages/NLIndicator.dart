import 'package:flutter/material.dart';

class NLIndicator extends StatelessWidget {
  var _currentIndex;
  var _count;
  NLIndicator(this._currentIndex, this._count);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: List.generate(_count, (index){
          return _currentIndex == index ? Container(
            width: 40,
            height: 8,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(4)
            ),
          ) : Container(
            width: 20,
            height: 8,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
          );
        }),
      ),
    );
  }
}