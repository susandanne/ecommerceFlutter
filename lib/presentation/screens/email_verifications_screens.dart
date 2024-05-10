
import 'package:ecommerceflutter/presentation/screens/otp_verificationsscreens.dart';
import 'package:ecommerceflutter/presentation/widgets/applogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifiactions extends StatefulWidget {
  const EmailVerifiactions({super.key});

  @override
  State<EmailVerifiactions> createState() => _EmailVerifiactionsState();
}

class _EmailVerifiactionsState extends State<EmailVerifiactions> {
  final TextEditingController _emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(

            children: [
              SizedBox(height: 120,),
              Applogo(),
              SizedBox(
                height: 8,
              ),
              Text(
                'welcome back',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'A 4 digit OTP code has been sent',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'email'
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(onPressed: (){
                Get.to(OtpVerifications());
              }, child:Text('next'))
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
