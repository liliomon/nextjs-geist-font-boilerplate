import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget _buildProfileOption({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    Color? iconColor,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor ?? AppColors.text,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right,
        color: AppColors.textLight,
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Header
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Profile Image
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.primary,
                          width: 2,
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundColor: AppColors.background,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: AppColors.textLight,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // User Name
                    const Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Email
                    const Text(
                      'john.doe@example.com',
                      style: TextStyle(
                        color: AppColors.textLight,
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(),

              // Profile Options
              _buildProfileOption(
                title: 'Edit Profile',
                icon: Icons.edit_outlined,
                onTap: () {
                  // TODO: Implement edit profile
                },
              ),
              _buildProfileOption(
                title: 'Notifications',
                icon: Icons.notifications_outlined,
                onTap: () {
                  // TODO: Implement notifications settings
                },
              ),
              _buildProfileOption(
                title: 'Security',
                icon: Icons.security_outlined,
                onTap: () {
                  // TODO: Implement security settings
                },
              ),
              _buildProfileOption(
                title: 'Help & Support',
                icon: Icons.help_outline,
                onTap: () {
                  // TODO: Implement help & support
                },
              ),
              _buildProfileOption(
                title: 'About',
                icon: Icons.info_outline,
                onTap: () {
                  // TODO: Implement about section
                },
              ),
              _buildProfileOption(
                title: 'Logout',
                icon: Icons.logout,
                iconColor: Colors.red,
                onTap: () {
                  // TODO: Implement logout
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
