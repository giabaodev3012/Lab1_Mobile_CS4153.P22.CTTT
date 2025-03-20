import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV - Data Scientist Intern'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              const ProfileSection(),
              const SizedBox(height: 24),

              // About Me Section
              const AboutMeSection(),
              const SizedBox(height: 24),

              // Details Section
              const DetailsSection(),
              const SizedBox(height: 24),

              // Experience Section
              const ExperienceSection(),
              const SizedBox(height: 24),

              // Working Experience Section
              const WorkingExperienceSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.teal.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_image.jpg'),
                backgroundColor: Colors.teal.shade100,
                // Xóa bỏ child để không hiển thị icon mặc định đè lên avatar
                onBackgroundImageError: (e, s) {
                  print("Không thể tải hình ảnh: $e");
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Data Scientist Intern Applicant',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'About me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'I am a fourth-year Information System student passionate about data science and machine learning. Through coursework and personal projects, I have developed strong analytical skills and proficiency in Python, SQL, and data visualization. I am eager to apply my academic knowledge in a practical setting and contribute to meaningful data-driven solutions as an intern. I am particularly interested in predictive modeling and data analysis that can drive business decisions.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailsSection extends StatelessWidget {
  const DetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Details',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 16),
          _buildDetailRow('Name:', 'Nguyễn Lương Gia Bảo'),
          _buildDetailRow('Age:', '21 years'),
          _buildDetailRow('Location:', 'Ho Chi Minh City'),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Experiences',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Educations',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 8),
          _buildEducationItem(
            'UIT, VNU-HCM',
            'Sep 2021 - 2026',
            'Information System',
            'Coursework in Data Mining, Machine Learning, Statistics, Database Systems, and Data Visualization. Conducted projects on predictive analytics and pattern recognition using Python, R, and SQL. Maintained a GPA of 3.2/4.0.',
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(
      String school, String period, String degree, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                school,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Text(
              period,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          degree,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}

class WorkingExperienceSection extends StatelessWidget {
  const WorkingExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Working Experiences',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 16),
          _buildWorkExperienceItem(
            'DataTech Solutions / Data Analysis Intern',
            'Jun 2023 - Aug 2023',
            'Assisted in analyzing customer behavior data for an e-commerce platform. Created data visualizations using Tableau and Python. Participated in developing a churn prediction model that improved customer retention by 15%.',
          ),
          const SizedBox(height: 16),
          _buildWorkExperienceItem(
            'FPT Software / AI Research Intern',
            'Dec 2022 - May 2023',
            'Participated in developing a recommendation system for an e-commerce platform using collaborative filtering. Performed feature engineering on user behavior data. Evaluated different machine learning models to optimize recommendation accuracy, resulting in a 12% increase in click-through rate.',
          ),
        ],
      ),
    );
  }

  Widget _buildWorkExperienceItem(
      String position, String period, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                position,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Text(
              period,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}