import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/login_chois_button.dart';
import 'package:icare/src/core/widgets/primary_button.dart';



class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.brown),
                ),
                Text(
                  "login and continue using the app",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
              ),
            ),


            SizedBox(
              height: 10,
            ),
            //Email form field
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
              height: 10,
            ),
            //Forgt password
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "forget password?",
                        style: TextStyle(fontSize: 20,
                            color: AppColors.fontPrimaryColor
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Login buttom
            PrimaryButton(text: "Login", onPressed: (){}),
            const SizedBox(
              height: 10,
            ),

            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3,
                    width: 100,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(

                    "or log with",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30
                    ),

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 3,
                    width:100,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginChoise(imageUrl: "assets/images/google_logo.png", onPressed: (){}),
                  SizedBox(
                    width: 20,
                  ),
                  LoginChoise(imageUrl: "assets/images/facebook_logo.png", onPressed: (){}),
                  SizedBox(
                    width: 20,
                  ),
                  LoginChoise(imageUrl: "assets/images/X_logo.png", onPressed: (){}),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do not have an account ?",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Register here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: AppColors.fontPrimaryColor
                        ),
                      )
                  )
                  ,

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
