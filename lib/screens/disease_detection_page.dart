import 'dart:io';
import 'package:flutter/material.dart';

class DiseaseDetectionPage extends StatelessWidget {
  final File? image;
  final String classValue;
  final String confidenceScore;
  final String symptomRecordingLink;

  const DiseaseDetectionPage(
      {Key? key,
      required this.image,
      required this.classValue,
      required this.confidenceScore,
      required this.symptomRecordingLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.file(image!),
            Text('Class: $classValue'),
            Text('Confidence Score: $confidenceScore'),
            Text('Symptom Recording Link: $symptomRecordingLink'),
          ],
        ),
      ),
    );
  }
}
