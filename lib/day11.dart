import 'package:flutter/material.dart';

class Day11 extends StatefulWidget {
  const Day11({super.key});

  @override
  State<Day11> createState() => _Day11State();
}

class _Day11State extends State<Day11> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Day 11",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        // child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/day11backdrop.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 150),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 100),
                      Text(
                        "Get Started With\n"
                        "Your Free Account",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Signup today and unlock the full potential of our platform.\n"
                        "Experience cutting-edge features to grow your business like \nnever before",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    height: 700,
                    width: 350,
                    padding: const EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black,
                      //     blurRadius: 10,
                      //     offset: const Offset(0, 5),
                      //   ),
                      // ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Create Your Account",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Full Name", style: TextStyle(fontSize: 20)),
                              customeTextFormField(
                                _fullname,
                                "Full Name",
                                TextInputType.name,
                                false,
                              ),
                              // const SizedBox(height: 10),
                              Text("Email", style: TextStyle(fontSize: 20)),
                              customeTextFormField(
                                _email,
                                "Email",
                                TextInputType.emailAddress,
                                false,
                              ),
                              // const SizedBox(height: 10),
                              Text("Password", style: TextStyle(fontSize: 20)),
                              customeTextFormField(
                                _password,
                                "Password",
                                TextInputType.visiblePassword,
                                true,
                              ),
                              // const SizedBox(height: 10),
                              Text(
                                "Confirm Password",
                                style: TextStyle(fontSize: 20),
                              ),
                              customeTextFormField(
                                _confirmPassword,
                                "Confirm Password",
                                TextInputType.visiblePassword,
                                true,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Checkbox(
                                    checkColor: Colors.blue,
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "I agree to the Terms of Service",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF5B8DEF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  onPressed: () {
                                    addData();
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Already have an account? Log in",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day12');
        },
        label: Text("Day 12"),
        icon: Icon(Icons.skip_next_outlined),
      ),
    );
  }

  Widget customeTextFormField(
    TextEditingController textController,
    String displayHintText,
    TextInputType customKeyboardType,
    bool hideText,
  ) {
    return TextFormField(
      obscureText: hideText,
      controller: textController,
      keyboardType: customKeyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hint: Text(displayHintText, style: TextStyle(color: Colors.grey)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$displayHintText cannot be empty';
        }
        return null;
      },
    );
  }

  void addData() {
    final isValid = _formKey.currentState?.validate();
    if (isValid != null && isValid) {
      _fullname.clear();
      _email.clear();
      _password.clear();
      _confirmPassword.clear();

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(("Data Added"))));
    }
  }
}
