import 'dart:async';
import 'dart:convert';

import 'package:character_viewer/constants/networking_constants.dart';
import 'package:http/http.dart' as http;

class CharacterDataSource {
  Future<Map<String, dynamic>> getCharacters(String query) async {
    final Uri url = Uri.parse('${NetworkingConstants.baseApiUrl}?q=$query&format=json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to fetch characters');
    }
  }
}
