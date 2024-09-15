import 'dart:convert';
import 'package:http/http.dart' as http;

class MenumateServices {
  final String baseUrl = 'https://api.spoonacular.com';
  final String apiKey = '947aeed06e8044cb9d50365dee43e8b8';

  Future<dynamic> getRecipes(String query) async {
    final url = Uri.parse('$baseUrl/recipes/complexSearch?query=$query&apiKey=$apiKey');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data;
      } else {
        throw Exception('Failed to load recipes');
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}