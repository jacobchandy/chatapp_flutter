import 'package:chatapp_flutter/auth/auth_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          // logout button
          IconButton(onPressed: logout, icon: const Icon(Icons.logout))
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
