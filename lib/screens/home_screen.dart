import 'login_screen.dart';
import 'package:flutter/material.dart';
import '../utils/theme_constants.dart'; // Assuming theme_constants.dart exists

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LAMAFIA - Início'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sair',
            onPressed: () {
              // TODO: Implement logout logic (clear user state, navigate to login)
              // For now, just navigate back to login as placeholder
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginScreen()), // Need to import LoginScreen
              );
               ScaffoldMessenger.of(context).showSnackBar(
                 const SnackBar(content: Text('Logout (placeholder) executado.')),
               );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tela Principal (HomeScreen)',
              style: TextStyle(fontSize: 24, color: ThemeConstants.textColor),
            ),
            const SizedBox(height: 20),
            const Text(
              'Conteúdo principal do app virá aqui.',
              style: TextStyle(color: ThemeConstants.textSecondaryColor),
            ),
            const SizedBox(height: 40),
            // Placeholder for main content/navigation (e.g., BottomNavigationBar)
            const Icon(Icons.dashboard_customize, size: 100, color: ThemeConstants.primaryColor),
            const SizedBox(height: 20),
            Text(
              'Canais, Instacla, Reuniões, etc.',
               style: TextStyle(color: ThemeConstants.textSecondaryColor),
            )
          ],
        ),
      ),
      // TODO: Add BottomNavigationBar or Drawer for navigation between sections
      // bottomNavigationBar: BottomNavigationBar(...),
    );
  }
}

// Need to import LoginScreen if not already globally available
// Assuming LoginScreen is in the same directory for simplicity here, adjust import as needed
import 'login_screen.dart';

