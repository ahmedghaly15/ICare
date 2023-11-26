import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/primary_button.dart';



class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(


      child: Container(
        width: double.infinity,
        padding: EdgeInsetsDirectional.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                height: 160,
                width: 160,
                child: Image.asset('assets/images/logo.png',
                  fit:BoxFit.fill
                  ,)
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start
                ,children: [
                Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.brown),
                ),
                Text(
                  "Register and continue using the app",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
              ),
            ),


            SizedBox(
              height: 30,
            ),
            //Email form field
            CustomTextFormField(
              suffixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.fontPrimaryColor,
              ),
              hintText: "Enter your name",
              label:"name" ,
            ),
            SizedBox(
              height:30 ,
            ),

            CustomTextFormField(
              suffixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.fontPrimaryColor,
              ),
              hintText: "Enter your email",
              label:"Email" ,
            ),
            SizedBox(
              height:30 ,
            ),
            CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.fontPrimaryColor,
              ),
              hintText: "Enter your Password",
              label:"Password" ,
            ),
            SizedBox(
              height:30 ,
            ),
            CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.fontPrimaryColor,
              ),
              hintText: "Enter your Confirm Pssword",
              label:"Confirm Pssword" ,
            ),

            SizedBox(
              height: 30,
            ),
            //Forgt password

            SizedBox(
              height: 10,
            ),
            //Login buttom
            PrimaryButton(text: "Login", onPressed: (){}),
            const SizedBox(
              height: 10,
            ),


          ],
        ),
      ),

    );
  }
}
