import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizhub/screens/login_screen.dart';
import 'package:quizhub/screens/welcome_screen.dart';
import 'package:sizer/sizer.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAll(WelcomeScreen());
          },
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
          width: devSize.width,
          height: devSize.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.red],
            ),
          ),
          child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 5.w, top: 8.h, right: 5.w),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.8.h,
                    ),
                    Image.asset('assets/logo1.png'),
                    SizedBox(
                      height: 0.8.h,
                    ),
                    Text('Sign Up'),
                    SizedBox(
                      height: 0.8.h,
                    ),
                    Text(
                      'Sign Up to continue',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.h, top: 2.h),
                      child: TextFormField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            labelText: "Name",
                            hintText: 'Enter your Full Name',
                            hintStyle: TextStyle(color: Colors.white),
                            labelStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.green,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                          validator: (v) {
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.h),
                      child: TextFormField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            labelText: "Email",
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(color: Colors.white),
                            labelStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.green,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                          validator: (v) {
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.white,
                        ),
                        labelText: 'Password',
                        hintText: "Enter Your Password",
                        labelStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        suffixIcon: IconButton(
                          splashRadius: 0.1,
                          icon: isVisible
                              ? Icon(
                                  Icons.visibility,
                                  color: Colors.green,
                                  size: 14.sp,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                  size: 14.sp,
                                ),
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                        ),
                      ),
                      validator: (v) {
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 6.h),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => SignupScreen(),
                              duration: Duration(milliseconds: 500),
                              transition: Transition.rightToLeft);
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white),
                          child: Center(
                              child: Text('Sign Up',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.6.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Or',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Google');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            height: 3.h,
                          ),
                          Text(
                            "  Continue with ",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Google',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.off(() => SigninScreen(),
                                  duration: Duration(milliseconds: 500),
                                  transition: Transition.rightToLeft);
                            },
                            child: Text(
                              'Sign in instead',
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
