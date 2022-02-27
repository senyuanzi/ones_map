class AmapWebApiUrl {
  static bycyclingRouteApiUrl(String origin, String destination, String key) {
    return "https://restapi.amap.com/v4/direction/bicycling?key=$key&origin=$origin&destination=$destination";
  }
}
