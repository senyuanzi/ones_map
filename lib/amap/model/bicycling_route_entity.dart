import 'dart:convert';
import 'package:ones_map/generated/json/base/json_field.dart';
import 'package:ones_map/generated/json/bicycling_route_entity.g.dart';

@JsonSerializable()
class BicyclingRouteEntity {

	BicyclingRouteData? data;
	int? errcode;
	dynamic? errdetail;
	String? errmsg;
	dynamic? ext;
  
  BicyclingRouteEntity();

  factory BicyclingRouteEntity.fromJson(Map<String, dynamic> json) => $BicyclingRouteEntityFromJson(json);

  Map<String, dynamic> toJson() => $BicyclingRouteEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class BicyclingRouteData {

	String? destination;
	String? origin;
	List<BicyclingRouteDataPaths>? paths;
  
  BicyclingRouteData();

  factory BicyclingRouteData.fromJson(Map<String, dynamic> json) => $BicyclingRouteDataFromJson(json);

  Map<String, dynamic> toJson() => $BicyclingRouteDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class BicyclingRouteDataPaths {

	int? distance;
	int? duration;
	List<BicyclingRouteDataPathsSteps>? steps;
  
  BicyclingRouteDataPaths();

  factory BicyclingRouteDataPaths.fromJson(Map<String, dynamic> json) => $BicyclingRouteDataPathsFromJson(json);

  Map<String, dynamic> toJson() => $BicyclingRouteDataPathsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class BicyclingRouteDataPathsSteps {

	String? action;
	@JSONField(name: "assistant_action")
	String? assistantAction;
	int? distance;
	int? duration;
	String? instruction;
	String? orientation;
	String? polyline;
	String? road;
	@JSONField(name: "walk_type")
	int? walkType;
  
  BicyclingRouteDataPathsSteps();

  factory BicyclingRouteDataPathsSteps.fromJson(Map<String, dynamic> json) => $BicyclingRouteDataPathsStepsFromJson(json);

  Map<String, dynamic> toJson() => $BicyclingRouteDataPathsStepsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}