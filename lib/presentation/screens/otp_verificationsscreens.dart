
import 'package:ecommerceflutter/presentation/screens/completeprofile.dart';

import 'package:ecommerceflutter/presentation/utility/App_colors.dart';
import 'package:ecommerceflutter/presentation/widgets/applogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerifications extends StatefulWidget {
  const OtpVerifications({super.key, this.email});
final email;
  @override
  State<OtpVerifications> createState() => _OtpVerificationsState();
}

class _OtpVerificationsState extends State<OtpVerifications> {
 final TextEditingController _otpController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                'Enter your OTP Code',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'enter your email address',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              _buildPinCodeTextField(),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(onPressed: (){
                Get.to(Profile());
              }, child:Text('verify')),
              SizedBox(height:16 ,),
              RichText(text: TextSpan(
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: 'this code expires in '),
                  TextSpan(text: '120s',style: TextStyle(color: AppColors.primarycolor) ),
                ]
              ),),
              SizedBox(height: 12,),
              TextButton(onPressed: (){}, child:Text('resend code'))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPinCodeTextField() {
    return PinCodeTextField(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      appContext: context,
      length: 4,
      obscureText: false,
      keyboardType:TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          activeFillColor: Colors.white,
          inactiveFillColor: Colors.transparent,
          selectedFillColor: Colors.white,
          inactiveColor: Colors.yellow
      ),
      animationDuration: Duration(milliseconds: 300),

      // backgroundColor: Colors.blue.shade50,
      enableActiveFill: true,
      controller: _otpController,
    );
  }
  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
}
