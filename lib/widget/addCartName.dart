import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void Messenger(String text) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(text),
          duration: Duration(seconds: 2),
          backgroundColor: Color.fromARGB(255, 25, 110, 179),
          dismissDirection: DismissDirection.up,
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)))));
    }

    return Row(
      children: [
        SizedBox(
          height: 48,
          width: 100,
          child: OutlinedButton(
              onPressed: () {
                Messenger(" Product Added to Cart ");
              },
              child: Icon(Icons.shopping_bag)),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple),
                foregroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.white),
                overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.blue),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 100, vertical: 16))),
            onPressed: () {
              Messenger("For The Momemnt Product is Not Available");
            },
            child: Text("BUY"))
      ],
    );
  }
}
