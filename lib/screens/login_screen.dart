import 'package:dockseekerapp/router/app_router.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    appRouter.pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
            SizedBox(height: 5),
            Image(
              image: AssetImage('assets/logo.png'),
              height: 100,
              width: 100,
            ),
            Text('DockSeeker', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Container(
              width: 300,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      //hintText: 'Correo',
                      labelText: 'Correo',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      //hintText: 'Contraseña',
                      labelText: 'Contraseña',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: const Text('¿Olvidaste tu contraseña?'),
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
              ),
              onPressed: () {},
              child:
                  Text('Iniciar Sesión', style: TextStyle(color: Colors.white)),
            ),
            Text('¿No tienes una cuenta?'),
            //Text('Únete', style: TextStyle(color: Colors.cyan[900])),
            TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: const Text('Únete'),
              ),
          ],
        ),
      ),
    );
  }
}
