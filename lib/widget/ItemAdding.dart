import 'package:flutter/material.dart';

class AddingButton extends StatefulWidget {
  const AddingButton({
    super.key,
  });

  @override
  State<AddingButton> createState() => _AddingButtonState();
}

class _AddingButtonState extends State<AddingButton> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sizebox(
          Icons.remove,
          () {
            if (num > 1) {
              setState(() {
                num--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            num.toString().padLeft(2, "0"),
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black87),
          ),
        ),
        sizebox(Icons.add, () {
          setState(() {
            num++;
          });
        })
      ],
    );
  }

  SizedBox sizebox(IconData icon, Function() onpress) {
    return SizedBox(
      width: 80,
      height: 32,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: OutlinedButton(onPressed: onpress, child: Icon(icon)),
      ),
    );
  }
}
