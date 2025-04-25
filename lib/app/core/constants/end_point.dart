class ApiPaths {
  static const String baseUrl = 'http://mdev.yemensoft.net:8087/';

  static const String onyxDeliveryService = 'OnyxDeliveryService/Service.svc/';

  static const String onyxDeliveryServiceUrl = '$baseUrl$onyxDeliveryService';

  
  //Auth EndPoint
  static const String checkDeliveryLogin =
      '$onyxDeliveryServiceUrl/CheckDeliveryLogin';
}
