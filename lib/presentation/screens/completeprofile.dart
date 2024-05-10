import 'package:ecommerceflutter/presentation/screens/home_screens.dart';
import 'package:ecommerceflutter/presentation/widgets/applogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _firstNameController=TextEditingController();
  final TextEditingController _lastNameController=TextEditingController();
  final TextEditingController _mobileController=TextEditingController();
  final TextEditingController _cityController=TextEditingController();
  final TextEditingController _shippingController=TextEditingController();
   final GlobalKey<FormState> _globalKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(height: 120,),
                  Applogo(),
                  ProfileForm(),
                  ElevatedButton(onPressed: (){
                     Get.to(Home());
                  }, child:Text('next'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget ProfileForm() {
    return Form(
      key: _globalKey,
      child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'complete profile',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        ' provide details data',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          hintText: 'First name'
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                            hintText: 'Last name'
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: _cityController,
                        decoration: InputDecoration(
                            hintText: 'city'
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: _mobileController,
                        decoration: InputDecoration(
                            hintText: 'mobile'
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: _shippingController,
                        maxLines: 4,
                        decoration: InputDecoration(
                            hintText: 'shipping address'
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
    );
  }
  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _cityController.dispose();
    _mobileController.dispose();
    super.dispose();
  }
}
