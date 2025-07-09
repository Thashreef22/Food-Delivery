import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

  //text editing controllers 
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();



  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),
        
        
            //messages, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),
        
            //email textfield
            MyTextField(
              controller:emailcontroller,
              hintText:"Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),
        
            //paasword textfield
             MyTextField(
              controller:passwordcontroller,
              hintText:"Password",
              obscureText: true,
            ),

            const SizedBox(height: 10),
        
            //sign in button
            MyButton(
              text: "Sign In", 
              onTap: () {},
              ),

              const SizedBox(height: 25),
        
            //not a member? register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?", 
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary ),
                    ),
                const SizedBox(width:4),
                Text(
                  "Register Now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                     ),
                  ),
              ],
            )
          ],
        ),
      ),
    );

  }
}