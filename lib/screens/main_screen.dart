import 'package:flutter/material.dart';
import 'fuel_screen.dart';
import 'service_screen.dart';
import 'insurance_screen.dart';
import 'parking_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double fuelExpense = 0;
  double serviceExpense = 0;
  double insuranceExpense = 0;
  double parkingExpense = 0;

  double get totalExpense => fuelExpense + serviceExpense + insuranceExpense + parkingExpense;

  void _navigateToFuelScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FuelScreen()),
    );
    if (result != null) {
      setState(() {
        fuelExpense += result;
      });
    }
  }

  void _navigateToServiceScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ServiceScreen()),
    );
    if (result != null) {
      setState(() {
        serviceExpense += result;
      });
    }
  }

  void _navigateToInsuranceScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const InsuranceScreen()),
    );
    if (result != null) {
      setState(() {
        insuranceExpense += result;
      });
    }
  }

  void _navigateToParkingScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ParkingScreen()),
    );
    if (result != null) {
      setState(() {
        parkingExpense += result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Расходы на автомобиль'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Общие расходы: ${totalExpense.toStringAsFixed(0)} руб',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Text(
              'Топливо: ${fuelExpense.toStringAsFixed(0)} руб',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              'Обслуживание: ${serviceExpense.toStringAsFixed(0)} руб',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              'Страховка: ${insuranceExpense.toStringAsFixed(0)} руб',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              'Парковка: ${parkingExpense.toStringAsFixed(0)} руб',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _navigateToFuelScreen,
              child: const Text('Добавить расход на топливо'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _navigateToServiceScreen,
              child: const Text('Добавить расход на обслуживание'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _navigateToInsuranceScreen,
              child: const Text('Добавить расход на страховку'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _navigateToParkingScreen,
              child: const Text('Добавить расход на парковку'),
            ),
          ],
        ),
      ),
    );
  }
}

