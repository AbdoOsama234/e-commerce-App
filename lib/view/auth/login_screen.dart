import 'package:e_commerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../constanse.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0, backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "Welcome,",fontSize: 30,),
                    CustomText(
                      text: "Sign Up",
                      fontSize: 18,
                      color:primaryColor ,),
          
          
                  ]
          
                ),
              SizedBox(height: 10,),
              CustomText(
                text: "Sign in to Continue",
                fontSize: 14,
                color:Colors.grey ,
              ),
              SizedBox(height: 30,),
          
              CustomTextFormField(
                text:"Email",
                hint: "Enter Your Email",
                onSave: (value){},
                validator: (value){},
              ),
              SizedBox(height: 40,),
          
              CustomTextFormField(
                text:"Password",
                hint: "Enter Your Password",
                onSave: (value){},
                validator: (value){},
              ),
          
              SizedBox(height: 20,),
          
              CustomText(
                alignment:Alignment.topRight,
                text: "Forget Password?",
                fontSize: 14,
              ),
              SizedBox(height: 40,),
          

              CustomButton(
                width: 350,
                hight: 60,
                bgColor:Colors.green,
                textColor:Colors.white,
                text:" SIGN IN" ,
                action: (){},
              ),

              SizedBox(height: 50,),


              CustomText(text: "-OR-",fontSize: 14,alignment: Alignment.center,),
              SizedBox(height: 20,),

              CustomButton(
                width: 350,
                hight: 60,
                bgColor:Colors.white,
                textColor:Colors.black,
                text:" Continue with google" ,
                action: (){},
                leadingIcon: Image.asset(
                  'assets/images/google.png',
                  height: 24,
                  width: 24,
                ),

              ),
          
          
          
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
