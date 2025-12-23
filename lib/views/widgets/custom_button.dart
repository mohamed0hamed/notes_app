import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';
class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.hintButton , this.onTap});
String? hintButton;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: KprimaryColor
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Center(child: Text('$hintButton',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                )),
              ),
    );
  }
}