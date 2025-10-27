
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Car extends ChangeNotifier{
  
  double oilPercentage = 0;

  void fillOil(double newOilPercentage){
    oilPercentage = newOilPercentage;
    notifyListeners();
  }
}





class CarPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Car(),
      builder: (context, _) {
        return Scaffold(
          body: Column(
            children: [
              Consumer<Car>(
                builder: (context, value, child) {
                  return Text('${value.oilPercentage}');
                }
              ),
              Consumer<Car>(
                builder: (context, value, child) {
                  return ElevatedButton(onPressed: () {
                    value.fillOil(0.1);
                    
                  }, child: Text("fill oil"),);
                }
              ),
            ],
          ),
        );
      }
    );
  }
}