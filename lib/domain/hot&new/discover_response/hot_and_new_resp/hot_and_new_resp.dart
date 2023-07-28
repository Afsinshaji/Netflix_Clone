import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'hot_and_new_resp.g.dart';

@JsonSerializable()
class HotAndNewResp {
	int? page;
	List<Result>? results;

	HotAndNewResp({this.page, this.results});

	factory HotAndNewResp.fromJson(Map<String, dynamic> json) {
		return _$HotAndNewRespFromJson(json);
	}

	Map<String, dynamic> toJson() => _$HotAndNewRespToJson(this);
}
