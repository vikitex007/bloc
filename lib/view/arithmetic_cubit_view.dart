import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/arithmentic_cubit.dart';
// Import the ArithmeticCubit file

class ArithmeticCubitView extends StatelessWidget {
  const ArithmeticCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final firstNumberController = TextEditingController();
    final secondNumberController = TextEditingController();

    return BlocProvider(
      create: (_) => ArithmeticCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Arithmetic Cubit"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: firstNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter first number',
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: secondNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter second number',
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<ArithmeticCubit, int>(
                builder: (context, result) {
                  return Text(
                    'Result: $result',
                    style: const TextStyle(fontSize: 30),
                  );
                },
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final first = int.tryParse(firstNumberController.text) ?? 0;
                    final second = int.tryParse(secondNumberController.text) ?? 0;
                    context.read<ArithmeticCubit>().add(first, second);
                  },
                  child: const Text('Add'),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final first = int.tryParse(firstNumberController.text) ?? 0;
                    final second = int.tryParse(secondNumberController.text) ?? 0;
                    context.read<ArithmeticCubit>().subtract(first, second);
                  },
                  child: const Text('Subtract'),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final first = int.tryParse(firstNumberController.text) ?? 0;
                    final second = int.tryParse(secondNumberController.text) ?? 0;
                    context.read<ArithmeticCubit>().multiply(first, second);
                  },
                  child: const Text('Multiply'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
