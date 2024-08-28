import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'screens/admin_dashboard.dart';
import 'screens/courses_screen.dart';
import 'screens/edit_screen.dart';
import 'screens/login_screen.dart';
import 'firebase_options.dart';
import 'screens/register_screen.dart';
import 'screens/scan_qr_result.dart';
import 'screens/show_statistics.dart';
import 'screens/student_dashboard.dart';
import 'screens/student_home.dart';
import 'screens/student_profile.dart';
import 'screens/teacher_dashboard.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Barcode? barcode;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
        '/adminDashBoard': (context) => const AdminDashboard(),
        '/courseContent': (context) => const CoursesScreen(),
        '/scanResult': (context) => ScanResult(
              barcode: barcode!,
            ),
        '/studentHome': (context) => const HomePage(),
        '/teachersDashboard': (context) => const TeacherDashboard(),
        '/showStat': (context) => const ShowStatistics(
              interval: '',
            ),
        '/profile': (context) => const Profile(),
        '/editScreen': (context) => const EditScreen(),
        '/sudentDashboard': (context) => const StudentDashboard(),
      },
      //home: const RegisterScreen(),
    );
  }
}
