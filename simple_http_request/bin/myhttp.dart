import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class myhttp{

Future<String> getResponse(String url)  async
{
  var url1 = url;
  var response = await http.get(url1);

  if (response.statusCode ==200)
  {
    return response.body;
  }else{
    return response.statusCode.toString();
  }
}
}