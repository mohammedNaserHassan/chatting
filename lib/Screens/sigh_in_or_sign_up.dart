import 'package:chatting/Screens/signup.dart';
import 'package:chatting/components/primary_button.dart';
import 'package:chatting/View/constants.dart';
import 'package:flutter/material.dart';
import '../Taps/chat_screen.dart';
class sigh_in_or_sign_up extends StatelessWidget {
   sigh_in_or_sign_up();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex: 2,),
              Center(child: Image.asset('assets/images/Logo_light.png',height: 145,color: Colors.green,)),
              Spacer(),
              PrimaryButton(text: 'Sign In',press: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (x)=>chat_screen()));
              },),
              SizedBox(height: kDefaultPadding*1.5,),
              PrimaryButton(text: 'Sign Up',press: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (x)=>Sign_up()));
              },
              color: Theme.of(context).colorScheme.secondary,
              ),
              Spacer(flex: 3,)
            ],
          ),
        ),
      ),
    );
  }
}
