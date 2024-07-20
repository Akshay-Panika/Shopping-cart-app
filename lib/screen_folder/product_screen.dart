import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_cart_app/widget_folder/height_width.dart';

import '../widget_folder/textstyle_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        titleTextStyle: textStyle16(fontWeight: FontWeight.w600),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      
                      // Image container
                      Container(
                        color: Colors.black38,
                        height: 150,width: 150,
                        child: const Center(child: Text("title")),
                      ),



                      // Product data
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("title"),
                            Text("subtitle"),
                            Text("old price"),
                            Text("new price"),
                          ],
                                            ),
                        ) ),
                    ],
                  ),

                  10.height,
                  const Divider(),

                  
                  // Add to cart function
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        // Offer text 
                        Text("Offer", style: textStyle14(),),
                        
                        // Add to cart 
                        Card(
                          child: SizedBox(
                            width: 150,height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                const InkWell(
                                  child: Icon(Icons.remove, size: 30,),
                                ),



                                Text("0", style: textStyle20(),),


                                const InkWell(
                                  child: Icon(Icons.add, size: 30,),
                                ),


                              ],
                            ),
                          ),),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          );
        },),
      ),
    );
  }
}
