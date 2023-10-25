import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const d_green = Color(0xFF54D3C2);
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My hotel',
      home:HomePage() ,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: d_green,
      appBar: MyAppBar(),
      body: Container(
        
      ),
      
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => new Size.fromHeight(50);
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
         icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[8000],
          size: 20,
           ),
         onPressed:null,
         ),
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
        
        ),
      backgroundColor: Colors.white,
      );
  }
}