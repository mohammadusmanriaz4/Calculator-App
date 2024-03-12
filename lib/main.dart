import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'constants.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
  ]);
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  
  debugShowCheckedModeBanner: false,
  
  home: SafeArea(
  child: Scaffold(

  backgroundColor: Colors.cyan.shade300,
  appBar: AppBar(
  title: Text('Lets Calculate'),
  ),


  body: Container(
 
  
  child: Column(
  children: [
  
  //Compilation ky liye Row
  Expanded(
  flex: 1,
  child: Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.cyan.shade200,
    child: Text(
    userInput.toString(),
    style: const TextStyle( 
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.bold
    ),
    ),
    
    ), 
  ),


  //Answer ky liye Row
  Expanded(
    flex: 1,
    child: Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
    color: Colors.amber,
    ),
  
    child: Text(
    answer.toString(),
    style: const TextStyle(
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
  ),




  //Buttons ky liye Container
  Expanded(
    flex: 4,
    //flex km kro tu couumn neechy ata ha, zada kro tu uper jata ha....
    child: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
      children: [
      
       
      
      Row(
      children: [
        
      Button(
      title: 'C',
      onPress: () {
      userInput = '';
      answer = '';
      setState(() {
      
      });  
      },
      ),
        
      Button(
      title: '+/-',
      onPress: () {
      userInput += '+/-';
      setState(() {
      
      });  
      },
      ),
        
      Button(
      title: '%',
      onPress: () {
      userInput += '%';
      setState(() {
          
      }); 
      },
      ),
        
      Button(
      title: '/',
      onPress: () {
      userInput += '/';
      setState(() {
          
      });  
      },
      ),
          
      ],
      ),  
        
      Row(
      children: [
        
      Button(
      title: '7',
      onPress: () {
      userInput += '7';
      setState(() {
          
      }); 
      },
      ),
        
      Button(
      title: '8',
      onPress: () {
      userInput += '8';
      setState(() {
          
      });  
      },
      ),
        
      Button(
      title: '9',
      onPress: () {
      userInput += '9';
      setState(() {
          
      }); 
      },
      ),
        
      Button(
      title: 'X',
      onPress: () {
      userInput += '*';
      setState(() {
          
      });  
      },
      ),
      
      ],
      ),
        
      Row(
      children: [
        
      Button(
      title: '4',
      onPress: () {
      userInput += '4';
      setState(() {
          
      }); 
      },
      ),
        
      Button(
      title: '5',
      onPress: () {
      userInput += '5';
      setState(() {
          
      });  
      },
      ),
        
      Button(
      title: '6',
      onPress: () {
      userInput += '6';
      setState(() {
          
      });  
      },
      ),
        
      Button(
      title: '-',
      onPress: () {
      userInput += '-';
      setState(() {
          
      });  
      },
      ),
      
      ],
      ),
        
      Row(
      children: [
        
      Button(
      title: '1',
      onPress: () {
      userInput += '1';
      setState(() {
          
      });  
      },
      ),
        
      Button(
      title: '2',
      onPress: () {
      userInput += '2';
      setState(() {
          
      });  
      },
      ),
        
      Button(
      title: '3',
      onPress: () {
      userInput += '3';
      setState(() {
          
      });  
      },
      ),
        
      Button(
      title: '+',
      onPress: () {
      userInput += '+';
      setState(() {
          
      });  
      },
      ),
      
      ],
      ),
        
      Row(
      children: [
        
      Button(
      title: '0',
      onPress: () {
      userInput += '0';
      setState(() {
          
      });  
      },
      ),
        
      Button(
      title: '.',
      onPress: () {
      userInput += '.';
      setState(() {
          
      });  
      },
      ),
        
      Button(
      title: 'DEL',
      onPress: () {
         
      },
      ),
        
      Button(
      title: '=',
      onPress: () {
      equalpress();
      setState(() {
          
      });
      },
      ),
      
      ],
      ),
      
      
      
      ],
      ),
    ),
  ),





  ]
  ),

  ),
  
  
  ),
  ),
  );
  }

  void equalpress() {
  Parser p = Parser();
  Expression expression = p.parse(userInput); 
  ContextModel contextModel = ContextModel();
  double eval = expression.evaluate(EvaluationType.REAL, contextModel);
  answer = eval.toString();
  }


}






