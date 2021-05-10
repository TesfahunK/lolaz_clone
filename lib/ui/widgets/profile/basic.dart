import 'package:flutter/material.dart';

class BasicHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 250,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey.withOpacity(0.8),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                title: Text("The name"),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "+29382923209",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                leading: Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.withOpacity(0.3),
                  child: Center(
                    child: Icon(
                      Icons.image,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
