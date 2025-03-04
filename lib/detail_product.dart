import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final Map<String, String> product;

  DetailProduct({required this.product});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Produk " + product['name']!),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              child: Image.asset(
                product['image']!,
                // height: 300.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rp" + product['price']!,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5.0),
                Text(
                    product['name']!,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                ),
              ],
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey, // Warna border atas
                    width: 10.0, // Ketebalan border atas
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                     // Warna border bawah
                    width: 10.0, // Ketebalan border bawah
                  ),
                ),
              ),
                child: Text(
                product['description']!,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[500],
                ),
              ),
            )
          ],
        )      
    );

  }
}