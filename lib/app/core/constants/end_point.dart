class ApiPaths {
  static const String baseUrl = 'http://mdev.yemensoft.net:8087/';

  static String get baseUrlDownloads => '${Uri.parse(baseUrl).origin}/';
  static const String onyxDeliveryService = 'OnyxDeliveryService/Service.svc/';

  //Auth EndPoint
  static const String checkDeliveryLogin =
      '$onyxDeliveryService/CheckDeliveryLogin';
}
