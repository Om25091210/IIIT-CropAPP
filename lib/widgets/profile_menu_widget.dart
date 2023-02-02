import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key, required this.title, required this.icon, required this.onPress, this.endIcon = true, this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: endIcon ? const Color.fromARGB(255, 16, 160, 0).withOpacity(0.1) : Colors.red.withOpacity(0.1)),
        child: Icon(
          icon,
          color: endIcon ? const Color.fromARGB(255, 16, 160, 0) : Colors.red,
        ),
      ),
      title: Text(title,
          style:
              GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold).apply(color: textColor)),
      trailing: endIcon? Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1)),
        child: const Icon(Icons.navigate_next, color: Colors.grey),
      ) : null,
    );
  }
}
