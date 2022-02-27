import 'package:dio/dio.dart';
import 'package:ones_map/amap/web_api/api_value.dart';

import '../model/bicycling_route_entity.dart';

class Route {

  ///骑行路线数据
  ///origin: 起点坐标
  ///destination: 终点坐标
  ///key: 高德web服务api类型key 申请地址：https://lbs.amap.com/dev/
  Future<> bicyclingRouteData(String origin, String destination, String key) async {

    ///创建Dio对象
    Dio dio = Dio();
    Response response1 = await dio.get(
        AmapWebApiUrl.bycyclingRouteApiUrl(origin, destination, key));

    var bdata = BicyclingRouteEntity.fromJson(response1.data);
    final List<LatLng> points = <LatLng>[];

    var list1 =
    bdata.data?.paths?.fold<List<BicyclingRouteDataPathsSteps>>([], (previousValue, element) {
      previousValue.addAll(element.steps ?? []);
      return previousValue;
    });
    var lineList = list1?.map((e) => e.polyline);
    var tlist = lineList?.fold<List<String>>([], (previousValue, element) {
      previousValue.addAll(element?.split(";") ?? []);
      return previousValue;
    });
    tlist?.forEach((e) {
      var t = e.split(",");
      var ll = LatLng(double.tryParse(t[1]) ?? 0, double.tryParse(t[0]) ?? 0);
      points.add(ll);
    });

    setState(() {
      polyline = Polyline(color: Colors.red
          , width: 10, points: points);
    });
  }

}