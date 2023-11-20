import 'package:escribo/controller/homepage_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final inputController = TextEditingController();
    final pageController = HomepageController();

    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(minWidth: 200.0, maxWidth: 400.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<int>(
                valueListenable: pageController.result,
                builder: (BuildContext context, int value,child) {
                  return Text('$value', 
                  style: const TextStyle(
                    fontSize: 24,
                  ),);
                },
              ),
              const SizedBox(
                height: 30,
              ),       
              TextField(
                controller: inputController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed:(){pageController.sumAllValuesDivisibleBy3And5(inputController.text);},               
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),     
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                ),
                child: const Text('Calcular', 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}