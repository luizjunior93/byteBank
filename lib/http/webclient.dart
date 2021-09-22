import 'package:byteBankTwo/http/interceptors/login_Interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

final Client client = HttpClientWithInterceptor.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: Duration(seconds: 5),
);
const String base_url = '192.168.0.58:8080';
const String base_url_compl = 'transactions';
