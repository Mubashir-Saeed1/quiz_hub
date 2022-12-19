import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizhub/screens/signup_screen.dart';
import 'package:quizhub/screens/welcome_screen.dart';
import 'package:sizer/sizer.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
          // padding:
          //     const EdgeInsets.only(top: 60.0, bottom: 100, left: 16, right: 16),
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
                    Text('Sign In'),
                    SizedBox(
                      height: 0.8.h,
                    ),
                    Text(
                      'Sign in to continue',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.h, top: 2.h),
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Get.to(() => ForgotPassword(),
                          //     duration: Duration(milliseconds: 500),
                          //     transition: Transition.rightToLeft);
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: GestureDetector(
                        // onTap: () {
                        //   Get.to(() => SigninScreen(),
                        //       duration: Duration(milliseconds: 500),
                        //       transition: Transition.rightToLeft);
                        // },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.green),
                          child: Center(
                              child: Text('Sign In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.off(() => SignupScreen(),
                                  duration: Duration(milliseconds: 500),
                                  transition: Transition.rightToLeft);
                            },
                            child: Text(
                              'Sign up',
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
