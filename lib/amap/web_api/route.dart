import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:dio/dio.dart';
import 'package:ones_map/amap/web_api/api_value.dart';


import '../model/bicycling_route_entity.dart';

///路线规划
class MapRoute {
  ///获取骑行路线数据
  ///origin: 起点坐标
  ///destination: 终点坐标
  ///key: 高德web服务api类型key 申请地址：https://lbs.amap.com/dev/
  static Future<BicyclingRouteData> bicyclingRoute(
      String origin, String destination, String key) async {
    ///创建Dio对象
    Dio dio = Dio();
    Response response = await dio.get(AmapWebApiUrl.bycyclingRouteApiUrl(origin, destination, key));

    ///骑行路线数据
    var data = BicyclingRouteEntity.fromJson(response.data);

    ///points数据
    final List<LatLng> points = <LatLng>[];

    ///steps数据
    ///List<BicyclingRouteDataPathsSteps>？
    var steps =
        data.data?.paths?.fold<List<BicyclingRouteDataPathsSteps>>([], (previousValue, element) {
      previousValue.addAll(element.steps ?? []);
      return previousValue;
    });
    var lineList = steps?.map((e) => e.polyline);
    var tlist = lineList?.fold<List<String>>([], (previousValue, element) {
      previousValue.addAll(element?.split(";") ?? []);
      return previousValue;
    });
    tlist?.forEach((e) {
      var t = e.split(",");
      var ll = LatLng(double.tryParse(t[1]) ?? 0, double.tryParse(t[0]) ?? 0);
      points.add(ll);
    });

    return BicyclingRouteData(data, steps ?? [], points);
  }
}

///骑行路线 数据类
class BicyclingRouteData {
  ///高德api返回的原始数据
  final BicyclingRouteEntity data;

  ///points 格式数据
  final List<BicyclingRouteDataPathsSteps> steps;

  ///points 格式数据
  final List<LatLng> points;

  BicyclingRouteData(this.data, this.steps, this.points);
}
