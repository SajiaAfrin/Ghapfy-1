// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/utils/app_color.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C344E),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,0),
                  child: Container(
                    height: 50,
                    width: 170,
             decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage("assets/splash/ghapfy.png"),
            fit: BoxFit.fill,
        )
      )
                   ),
                )
              ),
              SizedBox(
                height: 102,
              ),
              CustomTextField(
                controller: _emailEditingController,
                hintText: "Email or Number",
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextField(
                controller: _passwordEditingController,
                obscureText: true,
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility,color: Color(0xFFFDD501) ,),
              ),
               SizedBox(
                height: 12,
              ),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forget Password",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFDD501)),
                  ),
                ],
              ),
              Divider(
                height: 18,
                thickness: 4,
                indent: 20,
                endIndent: 0,
                color: Color(0xFFFDD501),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: isLoading
                    ? Center(child: CircularProgressIndicator())
                    : CustomButton(
                        onTap: () {
                        
                        },
                        color: Color(0xFF236199),
                        levelColor: Color(0xFFFDD501),
                        buttonLevel: "Login",
                      ),
              ),
             Center(
               child: Text(
                          "Or",
                          style: TextStyle(
                            fontSize: 19, 
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFDD501)
                          ),
                        ),
             ),
              Center(
                child: isLoading
                    ? Center(child: CircularProgressIndicator())
                    : CustomButton(
                        onTap: () {
                      
                        },
                        color: Color(0xFFFDD501),
                        levelColor:  Color(0xFF236199),
                        buttonLevel: "Create New",
                      ),
              ),
            SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.facebook,color:  Color(0xFFFDD501),size: 35,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.facebook,color:  Color(0xFFFDD501),size: 35,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.facebook,color:  Color(0xFFFDD501),size: 35,),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
