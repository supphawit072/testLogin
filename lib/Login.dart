import 'package:flutter/material.dart';
import 'Home.dart';

class Logpage extends StatefulWidget {
  const Logpage({super.key});

  @override
  State<Logpage> createState() => _LogpageState();
}

class _LogpageState extends State<Logpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    colors: [Colors.white, Colors.blue.shade100])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_textWelcome(), _Loginform(), _Buttonlog(context)],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textWelcome() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 8),
          Text(
            "Login Page",
            style: TextStyle(
              fontSize: 36,
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // สร้าง TextEditingController สำหรับ TextField ทั้งสอง
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Widget _Loginform() {
    return Container(
      child: Column(
        children: [
          TextField(
            controller:
                _usernameController, // ใช้ TextEditingController สำหรับ TextField
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(
                fontSize: 16,
                color: Colors.blue.shade500,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20), // Add some spacing between the input fields
          TextField(
            controller:
                _passwordController, // ใช้ TextEditingController สำหรับ TextField
            obscureText: true, // Hide the entered text for password
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                fontSize: 16,
                color: Colors.blue.shade500,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _Buttonlog(BuildContext context) {
    String username = ''; // ประกาศตัวแปรสำหรับเก็บชื่อผู้ใช้
    String password = ''; // ประกาศตัวแปรสำหรับเก็บรหัสผ่าน

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity, // Set the width to match the parent's width
      child: ElevatedButton(
        onPressed: () {
          // ดึงชื่อผู้ใช้และรหัสผ่านที่ผู้ใช้ป้อน
          username = _usernameController.text;
          password = _passwordController.text;

          // ส่งชื่อผู้ใช้และรหัสผ่านไปยังหน้า SecondPage
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Homepage(
                username: username,
                password: password,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Set the background color to white
        ),
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
