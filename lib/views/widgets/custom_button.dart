import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';
class CustomButton extends StatelessWidget {
 const CustomButton({super.key, this.hintButton , this.onTap, this.isloading = false});
final String? hintButton;
final VoidCallback? onTap;
final bool isloading ;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kprimaryColor
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Center(
                  child: isloading ? SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                    color: Colors.black,
                   ),
                  )
                : Text('$hintButton',
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