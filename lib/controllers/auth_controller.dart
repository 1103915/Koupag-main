import 'package:koupag/services/http_services.dart';

class AuthController {
  final basePath = '/api/auth/';
  HttpService httpService = HttpService();

  Future<List?> userTypes() async {
    final List? list = await httpService.get('${basePath}userTypes');
    return list;
  }
}
