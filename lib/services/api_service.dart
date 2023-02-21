import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    // 200 응답 = 정상 응답
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
