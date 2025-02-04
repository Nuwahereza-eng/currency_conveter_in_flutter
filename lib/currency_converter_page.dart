
import 'package:flutter/material.dart';
class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key}) ;
  @override
  State<CurrencyConverterPage>  createState() {
    return _CurrencyConverterp();
    }
    }

class _CurrencyConverterp extends State<CurrencyConverterPage> {
  @override
  Widget build(BuildContext context) {
    final currencyController = TextEditingController();
     double result=0;
    const border =UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black,
                   width: 2.0,
                   style: BorderStyle.solid),
                   borderRadius: BorderRadius.all(Radius.circular(10))
               );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Currency Converter"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        
      ),
      body:Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text("UGX: ${result.toString()}",
          style:TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255,255,255,255)
           ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
                controller: currencyController,
               style: const TextStyle(
                 color: Colors.black,
               ),
               decoration: const InputDecoration(
                 hintText: "Please enter currency in ugx.",
                 hintStyle: TextStyle(
                   color: Colors.black
                 ),
                 prefixIcon: Icon(Icons.monetization_on_outlined),
                 prefixIconColor: Colors.black,
                 filled: true,
                 fillColor: Colors.white,
                 focusedBorder:border,
                 enabledBorder:border
               ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextButton(
               onPressed: () {   
                 setState(() {
               result = double.parse(currencyController.text) * 3650; 
                 });
               },
               style: ButtonStyle(
                 backgroundColor: WidgetStateProperty.all(Colors.black),
                 padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                 minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),
                 shape: WidgetStateProperty.all(RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8)
                 ))
               ),
               child: const Text("Convert", style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold
               ),),
             ),
           )

           
           ]
      ),
    ),
    );
  }
  }
  

