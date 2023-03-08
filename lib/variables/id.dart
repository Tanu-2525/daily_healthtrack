import 'package:flutter/material.dart';
class PatientId extends StatelessWidget {
  final PatientName;
  final MedocId;
  final HealthId;

  const PatientId({
    required this.PatientName,
    required this.MedocId,
    required this.HealthId,

  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              PatientName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),

            ),
          ),
          Row(
            children: [
              Text(
                "Medoc ID:",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                MedocId,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Health ID:",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                HealthId,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}