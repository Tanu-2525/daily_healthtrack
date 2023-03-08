import 'package:flutter/material.dart';
class rcnt_food extends StatelessWidget {
  final food_data;


  rcnt_food({
    required this.food_data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black26),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15,8,8,9),
            child: Text(
              'Recent Food',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            food_data,
            textAlign: TextAlign.center,
          )
        ],
      )
    );
  }
}
