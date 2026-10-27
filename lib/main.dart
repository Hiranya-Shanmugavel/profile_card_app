import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileCardApp());
}

/// Root widget of the Profile Card Application.
class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          primary: Colors.teal,
          surface: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const ProfileCardScreen(),
    );
  }
}

/// Single-screen Profile Card displaying user info and contact details.
class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Soft teal tinted background to make the white card stand out
      backgroundColor: const Color(0xFFE0F2F1), // Teal 50
      appBar: AppBar(
        title: const Text(
          'Profile Card',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      // SafeArea ensures UI does not overlap device notch, camera cutouts, or status bar
      body: SafeArea(
        // SingleChildScrollView ensures responsive layout without overflow on small screens
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: ConstrainedBox(
              // Prevents the card from expanding too wide on tablets or desktop screens
              constraints: const BoxConstraints(maxWidth: 420),
              // Main Profile Card Container
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.0), // Rounded corners
                  border: Border.all(
                    color: Colors.teal.shade100,
                    width: 1.2,
                  ),
                  // Modern subtle shadow
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal.withOpacity(0.12),
                      blurRadius: 20.0,
                      spreadRadius: 2.0,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                // Column widget arranged vertically
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAlignment.center,
                  children: [
                    // --- 1. Circular Avatar with initials "HR" ---
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.teal.shade300,
                          width: 3.0,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.teal.shade600,
                        child: const Text(
                          'HR',
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18.0),

                    // --- 2. Full Name ---
                    const Text(
                      'Your Name',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF004D40), // Deep Teal
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 8.0),

                    // --- 3. Academic / Professional Role Badge ---
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14.0,
                        vertical: 6.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Colors.teal.shade200,
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        'Computer Science Engineering Student',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.teal.shade800,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),

                    // --- 4. Subtle Divider ---
                    Divider(
                      color: Colors.teal.shade100,
                      thickness: 1.0,
                    ),
                    const SizedBox(height: 20.0),

                    // --- 5. Three Styled Contact Rows ---
                    // Email Contact Row
                    _buildContactCard(
                      icon: Icons.email_outlined,
                      label: 'EMAIL',
                      value: 'your.name@college.edu',
                    ),
                    const SizedBox(height: 12.0),

                    // Phone Contact Row
                    _buildContactCard(
                      icon: Icons.phone_outlined,
                      label: 'PHONE',
                      value: '+91 98765 43210',
                    ),
                    const SizedBox(height: 12.0),

                    // Location Contact Row
                    _buildContactCard(
                      icon: Icons.location_on_outlined,
                      label: 'LOCATION',
                      value: 'Bangalore, Karnataka, India',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Helper widget to build styled responsive contact rows using Container, Row, and Text.
  Widget _buildContactCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.teal.shade50.withOpacity(0.55),
        borderRadius: BorderRadius.circular(14.0), // Rounded corners
        border: Border.all(
          color: Colors.teal.shade100,
          width: 1.0,
        ),
      ),
      // Row widget for horizontal alignment of icon + text
      child: Row(
        children: [
          // Circular icon container
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.teal.shade100,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.teal.shade800,
              size: 20.0,
            ),
          ),
          const SizedBox(width: 14.0),
          // Expanded widget prevents horizontal overflow on narrow mobile screens
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 10.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade700,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(height: 2.0),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F2937), // Slate dark text
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
