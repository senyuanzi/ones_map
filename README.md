# ones_map

ones map package.

ones，the chosen，better to flutter.

[*ones*](https://github.com/senyuanzi/ones)套件中的map组件。

后续会继续开发更新。欢迎加群提出需求和交流：829733587

[comment]: <> (## Getting Started)
[comment]: <> (#### 特性)

#### 安装

```yaml
dependencies:
  ones_map: ^0.1.3
```

注意：本库需配合[高德官方flutter插件](https://lbs.amap.com/api/flutter/guide/map-flutter-plug-in/map-flutter-info)使用

这么做是为了保证本库最小侵入性，以及最大的自由度。

#### 示例

```dart
    //骑行路线数据，入参：起点坐标，终点坐标，高德web服务api类型key
    var routeData = await MapRoute.bicyclingRoute(origin, destination, amapKey);

    setState(() {
        //配置line样式
        polyline = Polyline(color: Colors.red, width: 10, points: routeData.points);
    });

// *************************下方是 view 的部分*************************

    // AMapWidge是高德官方flutter插件提供的widget
    AMapWidget(
        apiKey: amapApiKeys,
        privacyStatement: amapPrivacyStatement,
        onMapCreated: onMapCreated,
        //传入polyline数组，这里以一个polyline为例
        polylines: Set.of([polyline]),
    );
```

#### 路线规划

- 骑行路线 数据
    1. ```dart
       MapRoute.bicyclingRoute(origin, destination, amapKey)
       ```