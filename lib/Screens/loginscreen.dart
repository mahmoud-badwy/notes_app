import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String priamryfont = "Mahmoud";
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  bool islogin0 = true;
  IconData iconeye = Icons.remove_red_eye;
  bool obscurestate = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.teal,

        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  islogin0 ? 'LOGIN' : 'SIGNUP',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: priamryfont,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    labelStyle: TextStyle(
                      fontFamily: priamryfont,
                    ),
                    labelText: 'Email Address',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    labelStyle: TextStyle(fontFamily: priamryfont),
                    labelText: 'password',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(iconeye),
                      onPressed: () {
                        if (obscurestate) {
                          setState(() {
                            obscurestate = false;
                            iconeye = Icons.visibility;
                          });
                        } else {
                          setState(() {
                            obscurestate = true;
                            iconeye = Icons.visibility_off;
                          });
                        }
                      },
                    ),
                  ),
                  obscureText: obscurestate,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.teal,
                  ),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      if (emailController.text.isEmpty &&
                          passwordController.text.isEmpty) {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                color: Colors.teal,
                                padding: const EdgeInsets.all(10),
                                height: 200,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.error_outline,
                                      color: Colors.amberAccent,
                                      size: 50,
                                    ),
                                    Text(
                                      'Plaese insert all Inputs !',
                                      style: TextStyle(
                                        fontFamily: priamryfont,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      } else {
                        Navigator.pushNamed(context, 'notepage');
                      }
                    },
                    child: Text(
                      islogin0 ? 'LOGIN' : 'SIGNUP',
                      style: TextStyle(
                        fontFamily: priamryfont,
                        color: Colors.white,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(islogin0
                        ? 'don\'t have an account ?'
                        : 'have an account ?'),
                    TextButton(
                      onPressed: () {
                        if (islogin0 == true) {
                          setState(() {
                            islogin0 = false;
                          });
                        } else {
                          setState(() {
                            islogin0 = true;
                          });
                        }
                      },
                      child: Text(
                        islogin0 ? 'regester now' : 'login now',
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
