
import '../../amap/model/bicycling_route_entity.dart';
import 'base/json_convert_content.dart';

BicyclingRouteEntity $BicyclingRouteEntityFromJson(Map<String, dynamic> json) {
	final BicyclingRouteEntity bicyclingRouteEntity = BicyclingRouteEntity();
	final BicyclingRouteData? data = jsonConvert.convert<BicyclingRouteData>(json['data']);
	if (data != null) {
		bicyclingRouteEntity.data = data;
	}
	final int? errcode = jsonConvert.convert<int>(json['errcode']);
	if (errcode != null) {
		bicyclingRouteEntity.errcode = errcode;
	}
	final dynamic? errdetail = jsonConvert.convert<dynamic>(json['errdetail']);
	if (errdetail != null) {
		bicyclingRouteEntity.errdetail = errdetail;
	}
	final String? errmsg = jsonConvert.convert<String>(json['errmsg']);
	if (errmsg != null) {
		bicyclingRouteEntity.errmsg = errmsg;
	}
	final dynamic? ext = jsonConvert.convert<dynamic>(json['ext']);
	if (ext != null) {
		bicyclingRouteEntity.ext = ext;
	}
	return bicyclingRouteEntity;
}

Map<String, dynamic> $BicyclingRouteEntityToJson(BicyclingRouteEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] = entity.data?.toJson();
	data['errcode'] = entity.errcode;
	data['errdetail'] = entity.errdetail;
	data['errmsg'] = entity.errmsg;
	data['ext'] = entity.ext;
	return data;
}

BicyclingRouteData $BicyclingRouteDataFromJson(Map<String, dynamic> json) {
	final BicyclingRouteData bicyclingRouteData = BicyclingRouteData();
	final String? destination = jsonConvert.convert<String>(json['destination']);
	if (destination != null) {
		bicyclingRouteData.destination = destination;
	}
	final String? origin = jsonConvert.convert<String>(json['origin']);
	if (origin != null) {
		bicyclingRouteData.origin = origin;
	}
	final List<BicyclingRouteDataPaths>? paths = jsonConvert.convertListNotNull<BicyclingRouteDataPaths>(json['paths']);
	if (paths != null) {
		bicyclingRouteData.paths = paths;
	}
	return bicyclingRouteData;
}

Map<String, dynamic> $BicyclingRouteDataToJson(BicyclingRouteData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['destination'] = entity.destination;
	data['origin'] = entity.origin;
	data['paths'] =  entity.paths?.map((v) => v.toJson()).toList();
	return data;
}

BicyclingRouteDataPaths $BicyclingRouteDataPathsFromJson(Map<String, dynamic> json) {
	final BicyclingRouteDataPaths bicyclingRouteDataPaths = BicyclingRouteDataPaths();
	final int? distance = jsonConvert.convert<int>(json['distance']);
	if (distance != null) {
		bicyclingRouteDataPaths.distance = distance;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		bicyclingRouteDataPaths.duration = duration;
	}
	final List<BicyclingRouteDataPathsSteps>? steps = jsonConvert.convertListNotNull<BicyclingRouteDataPathsSteps>(json['steps']);
	if (steps != null) {
		bicyclingRouteDataPaths.steps = steps;
	}
	return bicyclingRouteDataPaths;
}

Map<String, dynamic> $BicyclingRouteDataPathsToJson(BicyclingRouteDataPaths entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['distance'] = entity.distance;
	data['duration'] = entity.duration;
	data['steps'] =  entity.steps?.map((v) => v.toJson()).toList();
	return data;
}

BicyclingRouteDataPathsSteps $BicyclingRouteDataPathsStepsFromJson(Map<String, dynamic> json) {
	final BicyclingRouteDataPathsSteps bicyclingRouteDataPathsSteps = BicyclingRouteDataPathsSteps();
	final String? action = jsonConvert.convert<String>(json['action']);
	if (action != null) {
		bicyclingRouteDataPathsSteps.action = action;
	}
	final String? assistantAction = jsonConvert.convert<String>(json['assistant_action']);
	if (assistantAction != null) {
		bicyclingRouteDataPathsSteps.assistantAction = assistantAction;
	}
	final int? distance = jsonConvert.convert<int>(json['distance']);
	if (distance != null) {
		bicyclingRouteDataPathsSteps.distance = distance;
	}
	final int? duration = jsonConvert.convert<int>(json['duration']);
	if (duration != null) {
		bicyclingRouteDataPathsSteps.duration = duration;
	}
	final String? instruction = jsonConvert.convert<String>(json['instruction']);
	if (instruction != null) {
		bicyclingRouteDataPathsSteps.instruction = instruction;
	}
	final String? orientation = jsonConvert.convert<String>(json['orientation']);
	if (orientation != null) {
		bicyclingRouteDataPathsSteps.orientation = orientation;
	}
	final String? polyline = jsonConvert.convert<String>(json['polyline']);
	if (polyline != null) {
		bicyclingRouteDataPathsSteps.polyline = polyline;
	}
	final String? road = jsonConvert.convert<String>(json['road']);
	if (road != null) {
		bicyclingRouteDataPathsSteps.road = road;
	}
	final int? walkType = jsonConvert.convert<int>(json['walk_type']);
	if (walkType != null) {
		bicyclingRouteDataPathsSteps.walkType = walkType;
	}
	return bicyclingRouteDataPathsSteps;
}

Map<String, dynamic> $BicyclingRouteDataPathsStepsToJson(BicyclingRouteDataPathsSteps entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['action'] = entity.action;
	data['assistant_action'] = entity.assistantAction;
	data['distance'] = entity.distance;
	data['duration'] = entity.duration;
	data['instruction'] = entity.instruction;
	data['orientation'] = entity.orientation;
	data['polyline'] = entity.polyline;
	data['road'] = entity.road;
	data['walk_type'] = entity.walkType;
	return data;
}