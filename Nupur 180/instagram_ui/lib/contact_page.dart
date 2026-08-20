import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Instagram-style top bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.send_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 16),
        ],
      ),

      body: Center(
        child: SizedBox(
          width: 390,

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ------------------------------------------------
                // PAGE TITLE
                // ------------------------------------------------

                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 18, 16, 4),
                  child: Text(
                    'Contact & Services',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: Text(
                    'How can we help you?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // ------------------------------------------------
                // SERVICES
                // ------------------------------------------------

                ServiceCard(
                  icon: Icons.person_outline,
                  title: 'Profile Support',
                  description:
                      'Get help with your profile and account.',
                ),

                ServiceCard(
                  icon: Icons.camera_alt_outlined,
                  title: 'Post Support',
                  description:
                      'Get help with posts and images.',
                ),

                ServiceCard(
                  icon: Icons.chat_bubble_outline,
                  title: 'Comments',
                  description:
                      'Questions about comments and interactions.',
                ),

                ServiceCard(
                  icon: Icons.favorite_border,
                  title: 'Account Help',
                  description:
                      'Get assistance with your account.',
                ),

                ServiceCard(
                  icon: Icons.email_outlined,
                  title: 'Contact Us',
                  description:
                      'Get in touch with our support team.',
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// ============================================================
// SERVICE CARD
// ============================================================

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),

          child: Row(
            children: [

              // Profile-style circular icon
              Container(
                width: 52,
                height: 52,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFFD54F),
                      Color(0xFFFF7043),
                      Color(0xFFE91E63),
                      Color(0xFF7E57C2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),

                child: Container(
                  margin: const EdgeInsets.all(3),

                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),

                  child: Icon(
                    icon,
                    color: Colors.black87,
                    size: 25,
                  ),
                ),
              ),

              const SizedBox(width: 14),

              // Service information
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              // Arrow
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                ),
              ),
            ],
          ),
        ),

        // Instagram-style divider
        const Divider(
          height: 1,
          indent: 82,
          color: Color(0xFFE5E5E5),
        ),
      ],
    );
  }
}