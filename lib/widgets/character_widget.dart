import 'package:cartoon_app/model/character.dart';
import 'package:flutter/material.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {

return Container(
  padding: const EdgeInsets.all(12.0),
  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  decoration: BoxDecoration(
    color: const Color(0xFFF8BBD0),
    borderRadius: BorderRadius.circular(25.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: const Offset(0, 3),
      ),
    ],
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        margin: const EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFF80AB),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          character.stars.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(
          character.image,
          width: 70, 
          height: 70,
          fit: BoxFit.contain,
        ),
      ),
      const SizedBox(width: 16.0),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              character.name,
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF880E4F),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              character.jobTitle,
              style: const TextStyle(
                fontSize: 16.0,
                color: Color(0xFF4A148C),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);



  }
}
