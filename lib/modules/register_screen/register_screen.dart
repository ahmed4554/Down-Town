import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/components.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1CB0F6),
              Color(0xfff5fcf7),
              Color(0xffFFFFFF),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            SvgPicture.asset(
              'assets/images/logo.svg',
              width: 200,
              height: 150,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Create An Account',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const CustomInputField(icon: Icons.person, label: 'User Name'),
                        const SizedBox(
                          height: 30,
                        ),
                        const CustomInputField(icon: Icons.email, label: 'E-mail'),
                        const SizedBox(
                          height: 30,
                        ),
                        const CustomInputField(icon: Icons.phone, label: 'Phone Number'),
                        const SizedBox(
                          height: 30,
                        ),
                        const CustomInputField(icon: Icons.lock_open_rounded, label: 'Password'),
                        const SizedBox(
                          height: 30,
                        ),
                        MainButton(
                          width: 290,
                          onTap: ()
                          {

                          },
                            label: 'Sign Up'
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
