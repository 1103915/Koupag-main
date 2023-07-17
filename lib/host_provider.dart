class HostProvider {
  static const int port = 8080;
  //your ip address will come here
  static const String ipAddress = '172.19.156.50';
  static const String hostAddress = 'http://$ipAddress:$port';
  static Uri launchUrl(String path) {
    return Uri.parse(hostAddress + path);
  }
}
