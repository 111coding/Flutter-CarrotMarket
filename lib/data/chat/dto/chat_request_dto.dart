import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_request_dto.freezed.dart';
part 'chat_request_dto.g.dart';

@freezed
class ChatRequestDto with _$ChatRequestDto {
  const factory ChatRequestDto({
    required int roomIdx,
    required String content,
  }) = _ChatRequestDto;

  factory ChatRequestDto.fromJson(Map<String, dynamic> json) => _$ChatRequestDtoFromJson(json);
}
