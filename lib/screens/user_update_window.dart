import 'package:flutter/material.dart';

class UserUpdateWindow extends StatefulWidget {
  const UserUpdateWindow({Key? key}) : super(key: key);

  @override
  State<UserUpdateWindow> createState() => _UserUpdateWindowState();
}

class _UserUpdateWindowState extends State<UserUpdateWindow> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _studentIdController = TextEditingController();
  final TextEditingController _contactNumberController = TextEditingController();

  String _selectedFaculty = 'Faculty of Computing'; // Default value

  List<String> _facultyOptions = [
    'Faculty of Computing',
    'Faculty of Engineering',
    'Faculty of Business',
    'Faculty of Science',
  ];

  void _saveUser() {
    // Handle saving user data here
    // For demonstration, let's just print the entered values
    print('Username: ${_usernameController.text}');
    print('Student ID: ${_studentIdController.text}');
    print('Faculty: $_selectedFaculty');
    print('Contact Number: ${_contactNumberController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE92E00),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white, size: 30,),
          onPressed: () {
            // Handle menu button tap
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white, size: 30,),
            onPressed: () {
              // Handle settings button tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: 5.0),
                Container(
                  width: 120, // Adjust the width as needed
                  height: 120, // Adjust the height as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF84D19B),
                    border: Border.all(
                      color: Colors.black, // Change the border color as needed
                      width: 2.0, // Adjust the border width as needed
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/user.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'UPDATE USER',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Student ID',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  controller: _studentIdController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Faculty',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                DropdownButtonFormField<String>(
                  value: _selectedFaculty,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedFaculty = newValue!;
                    });
                  },
                  items: _facultyOptions.map((faculty) {
                    return DropdownMenuItem(
                      value: faculty,
                      child: Text(faculty),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Contact Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  controller: _contactNumberController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _saveUser,
                    child: Text('Save', style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all(
                        Size.fromHeight(50.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _studentIdController.dispose();
    _contactNumberController.dispose();
    super.dispose();
  }
}
