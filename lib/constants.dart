import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
  {
  super.key,

  // initializing title 
  this.title = '',

  // intializing color
  this.color = Colors.white,

  // intializing onPress
  required  this.onPress,

  }
  );
  
  // declaringing title
  final String title;

  // declaringing color
  final Color color;

  // declaringing onPress
  final VoidCallback onPress;

  
  @override
  Widget build(BuildContext context) {
  return Expanded(
  
  child: Padding(
  padding:  const EdgeInsets.symmetric(
  vertical: 5, 
  ),
        
  child: InkWell(
  onTap: onPress,
  

  
  child: Container(
  height: 70,
  decoration: BoxDecoration(
  color: color,
  shape: BoxShape.circle,
  ),
          
  child: Center(
  child: Text(
  //Calling Title
  title, 
  style: const TextStyle(
  fontSize: 25,
  color: Colors.black,
  fontWeight: FontWeight.bold,
  ),
  
  ),
  
  ),
  
  ),
  
  ),
  
  ),
  
  );
  
  }
}






