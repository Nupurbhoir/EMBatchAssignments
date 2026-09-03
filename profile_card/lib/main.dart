import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nupur Bhoir Profile',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF4F81),
          primary: const Color(0xFFFF4F81),
          secondary: const Color(0xFF38BDF8),
        ),
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color pink = Color(0xFFFF4F81);
  static const Color skyBlue = Color(0xFF38BDF8);
  static const Color black = Color(0xFF111827);
  static const Color lightPink = Color(0xFFFFEEF3);
  static const Color lightBlue = Color(0xFFEAF7FE);
  static const Color grey = Color(0xFF6B7280);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final horizontalPadding = screenWidth < 600
        ? 16.0
        : screenWidth < 1000
            ? 28.0
            : 50.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        titleSpacing: horizontalPadding,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: lightPink,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.person,
                color: pink,
                size: 22,
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              'My Profile',
              style: TextStyle(
                color: black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: black,
            ),
          ),
          SizedBox(width: screenWidth < 600 ? 8 : 30),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: 24,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth >= 900;

              if (isWide) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          _buildProfileCard(),
                          const SizedBox(height: 20),
                          _buildAboutCard(),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          _buildStatsCard(),
                          const SizedBox(height: 20),
                          _buildPersonalInfoCard(),
                          const SizedBox(height: 20),
                          _buildSkillsCard(),
                        ],
                      ),
                    ),
                  ],
                );
              }

              return Column(
                children: [
                  _buildProfileCard(),
                  const SizedBox(height: 20),
                  _buildStatsCard(),
                  const SizedBox(height: 20),
                  _buildPersonalInfoCard(),
                  const SizedBox(height: 20),
                  _buildAboutCard(),
                  const SizedBox(height: 20),
                  _buildSkillsCard(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  // ============================================================
  // PROFILE CARD
  // ============================================================

  Widget _buildProfileCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          // Profile image + correctly positioned online indicator
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: pink,
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 92,
                  backgroundColor: skyBlue,
                  backgroundImage: AssetImage(
                    'assets/profile.jpg',
                  ),
                ),
              ),

              // GREEN ONLINE DOT
              Positioned(
                right: 8,
                bottom: 8,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: const Color(0xFF22C55E),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          const Text(
            'Nupur Bhoir',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: lightPink,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Flutter Developer',
              style: TextStyle(
                color: pink,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 12),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: skyBlue,
                size: 20,
              ),
              SizedBox(width: 6),
              Flexible(
                child: Text(
                  'Navi Mumbai, India',
                  style: TextStyle(
                    color: grey,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 22),

          Row(
            children: [
              Expanded(
                child: _buildActionButton(
                  text: 'Follow',
                  icon: Icons.person_add_alt_1,
                  color: pink,
                  textColor: Colors.white,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildActionButton(
                  text: 'Message',
                  icon: Icons.chat_bubble_outline,
                  color: black,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required String text,
    required IconData icon,
    required Color color,
    required Color textColor,
  }) {
    return SizedBox(
      height: 48,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 19,
          color: textColor,
        ),
        label: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // STATS CARD
  // ============================================================

  Widget _buildStatsCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 24,
      ),
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildStatItem(
              icon: Icons.folder_rounded,
              value: '24',
              label: 'Projects',
              iconColor: skyBlue,
            ),
          ),
          Container(
            height: 65,
            width: 1,
            color: Colors.white24,
          ),
          Expanded(
            child: _buildStatItem(
              icon: Icons.people_alt_rounded,
              value: '1.8K',
              label: 'Followers',
              iconColor: pink,
            ),
          ),
          Container(
            height: 65,
            width: 1,
            color: Colors.white24,
          ),
          Expanded(
            child: _buildStatItem(
              icon: Icons.star_rounded,
              value: '4.9',
              label: 'Rating',
              iconColor: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required String value,
    required String label,
    required Color iconColor,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 28,
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  // ============================================================
  // PERSONAL INFORMATION
  // ============================================================

  Widget _buildPersonalInfoCard() {
    return _buildSectionCard(
      title: 'Personal Information',
      icon: Icons.badge_outlined,
      iconBackground: lightBlue,
      iconColor: skyBlue,
      child: Column(
        children: [
          _buildInfoRow(
            icon: Icons.email_outlined,
            title: 'Email',
            value: 'nupurbhoir21@gmail.com',
            color: skyBlue,
          ),
          _buildDivider(),
          _buildInfoRow(
            icon: Icons.phone_outlined,
            title: 'Contact',
            value: '9321897920',
            color: pink,
          ),
          _buildDivider(),
          _buildInfoRow(
            icon: Icons.location_on_outlined,
            title: 'Location',
            value: 'Navi Mumbai, India',
            color: skyBlue,
          ),
          _buildDivider(),
          _buildInfoRow(
            icon: Icons.school_outlined,
            title: 'Education',
            value: 'Computer Science',
            color: pink,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.10),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: color,
              size: 21,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  style: const TextStyle(
                    color: black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      height: 1,
      color: Color(0xFFE5E7EB),
    );
  }

  // ============================================================
  // ABOUT ME
  // ============================================================

  Widget _buildAboutCard() {
    return _buildSectionCard(
      title: 'About Me',
      icon: Icons.person_outline,
      iconBackground: lightPink,
      iconColor: pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'I am a passionate Flutter developer who enjoys '
            'building modern, responsive and user-friendly '
            'applications. I love transforming creative ideas '
            'into clean and meaningful digital experiences.',
            style: TextStyle(
              color: Color(0xFF4B5563),
              fontSize: 15,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 18),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _buildTag(
                'Flutter',
                lightBlue,
                skyBlue,
              ),
              _buildTag(
                'Dart',
                lightPink,
                pink,
              ),
              _buildTag(
                'UI/UX',
                lightBlue,
                skyBlue,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTag(
    String text,
    Color backgroundColor,
    Color textColor,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
    );
  }

  // ============================================================
  // SKILLS
  // ============================================================

  Widget _buildSkillsCard() {
    return _buildSectionCard(
      title: 'Skills & Expertise',
      icon: Icons.code,
      iconBackground: lightPink,
      iconColor: pink,
      child: Column(
        children: [
          _buildSkill(
            name: 'Flutter',
            percentage: 0.90,
            value: '90%',
            color: skyBlue,
          ),
          const SizedBox(height: 18),
          _buildSkill(
            name: 'Dart',
            percentage: 0.85,
            value: '85%',
            color: pink,
          ),
          const SizedBox(height: 18),
          _buildSkill(
            name: 'UI / UX Design',
            percentage: 0.78,
            value: '78%',
            color: const Color(0xFF8B5CF6),
          ),
          const SizedBox(height: 18),
          _buildSkill(
            name: 'Firebase',
            percentage: 0.72,
            value: '72%',
            color: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget _buildSkill({
    required String name,
    required double percentage,
    required String value,
    required Color color,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  color: black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                color: black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          height: 8,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFE5E7EB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: percentage,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // COMMON SECTION CARD
  // ============================================================

  Widget _buildSectionCard({
    required String title,
    required IconData icon,
    required Color iconBackground,
    required Color iconColor,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 16,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: iconBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 21,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          child,
        ],
      ),
    );
  }
}