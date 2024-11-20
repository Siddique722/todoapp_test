import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';


class GoldAppScreen extends StatefulWidget {
  const GoldAppScreen({super.key});

  @override
  State<GoldAppScreen> createState() => _GoldAppScreenState();
}

class _GoldAppScreenState extends State<GoldAppScreen> {
  double totalPrice=0.0;
  TextEditingController tolaPriceController=TextEditingController();
  TextEditingController tolaQuantityController=TextEditingController();
  TextEditingController mashaQuantityController=TextEditingController();
  TextEditingController rattiQuantityController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade500,
        title: Text('Gold App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        tolaQuantityController.clear();
        tolaPriceController.clear();
        mashaQuantityController.clear();
        rattiQuantityController.clear();
        totalPrice=0.0;
        setState(() {

        });

      },backgroundColor: Colors.orange.shade500,child: Icon(Icons.refresh),),
      body: SingleChildScrollView(
        child: Column(children: [
          ///TODO:tola price text form field
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 40,top: 20),
            child: Column(
                     //   mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter Tola Price',style: TextStyle(color: Colors.orange.shade500,fontWeight: FontWeight.bold),),              Container(
                  padding: EdgeInsets.only(left: 20),
                 // margin: EdgeInsets.only(left: 40,right: 40,top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange.shade500),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: tolaPriceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Tola Price',
                      hintStyle: TextStyle(color: Colors.orange.shade500)
                    ),
                  ),
                ),
              ],
            ),
          ),
        
        
        
        
          ///TODO:tola quntity text form field
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange.shade500),
              borderRadius: BorderRadius.circular(5)
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.orange.shade500),
              controller: tolaQuantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Tola Quantity',
                hintStyle: TextStyle(color: Colors.orange.shade500)
              ),
            ),
          ),
        
        
          ///TODO:masha quntity text form field
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange.shade500),
                borderRadius: BorderRadius.circular(5)
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.orange.shade500),
              controller: mashaQuantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Masha Quantity',
                  hintStyle: TextStyle(color: Colors.orange.shade500)
              ),
            ),
          ),
        
        
          ///TODO:ratti quntity text form field
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange.shade500),
                borderRadius: BorderRadius.circular(5)
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.orange.shade500),
              controller: rattiQuantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Ratti Quantity',
                  hintStyle: TextStyle(color: Colors.orange.shade500)
              ),
            ),
          ),
        Text('Total Price:$totalPrice',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orange.shade500),),
        
          ///TODO: calculate button
        
        
          GestureDetector(
            onTap: (){
              if(tolaPriceController.text=='')
                {
                  Get.defaultDialog(
                    title: 'Error',
                    content: Text('Tola Price must be filled'),
                    actions: [
                      TextButton(onPressed: (){
                       // Navigator.pop(context);// back screen
                        Get.back();
                      }, child: Text('Ok'))
                    ]
                  );


                  Get.snackbar(
                    snackPosition: SnackPosition.BOTTOM,
                  //  snackPosition:SnackPosition.,
                    icon: Icon(Icons.error_outline),
                    'Error',// title
                    'Tola Price must be filled',// desription
                    backgroundColor: Colors.orange.shade500.withOpacity(0.8)
                  );
                  // tolaPriceController.text='0';
                  // setState(() {
                  //
                  // });
                }
              if(tolaQuantityController.text=='')
                {
                  tolaQuantityController.text='0';
                  setState(() {

                  });
                }



              double tolaPrice=double.parse(tolaPriceController.text);
              double tolaQuantity=double.parse(tolaQuantityController.text);
              // Masha Formula
        
              // to get 1 masha price
              double pricePerMasha=tolaPrice/12;
              //
              double mashaQuantity=double.parse(mashaQuantityController.text);
              // total price of masha quantity entered
              double totalPriceMasha=pricePerMasha*mashaQuantity;
        
              // Ratti quantity
        
              // to fetch ratti quantity from text field
        
              double rattiQuantity=double.parse(rattiQuantityController.text);
        
              // to find price of 1 ratti
              double pricePerRatti=tolaPrice/96;
        
              // to get total price of ratti quantity
              double totlaPriceRatti=pricePerRatti*rattiQuantity;
        
              totalPrice=(tolaPrice*tolaQuantity )+totalPriceMasha+totlaPriceRatti;
        
        
        
        
        
        
        //
        
              totalPrice=totalPrice+totalPriceMasha;
        
        
              setState(() {
        
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.orange.shade500,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child: Text('Calculate',style: TextStyle(fontWeight: FontWeight.bold),),),
            ),
          )
        ],),
      ),
    );
  }
}
