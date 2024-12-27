
import 'package:flutter/material.dart';

class StudentDetailsView extends StatelessWidget {
  const StudentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Cubit"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                labelText: "Name",
                labelStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                labelText: "Age",
                labelStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                labelText: "Address",
                labelStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
                width:double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text("Submit")))

          ],
        ),
      ),



    );
  }
}
