protoc --proto_path=C:\proj\gpt\12345\manifest\protobuf --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb C:\proj\gpt\12345\manifest\protobuf\grpc\v1\api.proto

protoc --proto_path=C:\proj\gpt\12345\manifest\protobuf --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb C:\proj\gpt\12345\manifest\protobuf\pbentity\tool.proto
protoc --proto_path=C:\proj\gpt\12345\manifest\protobuf --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb C:\proj\gpt\12345\manifest\protobuf\pbentity\common.proto
protoc --proto_path=C:\proj\gpt\12345\manifest\protobuf --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb C:\proj\gpt\12345\manifest\protobuf\pbentity\dialog.proto
protoc --proto_path=C:\proj\gpt\12345\manifest\protobuf --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb C:\proj\gpt\12345\manifest\protobuf\pbentity\message.proto
protoc --proto_path=C:\proj\gpt\12345\manifest\protobuf --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb C:\proj\gpt\12345\manifest\protobuf\pbentity\uprofile.proto
protoc --proto_path=C:\proj\gpt\12345\manifest\protobuf --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb C:\proj\gpt\12345\manifest\protobuf\pbentity\account.proto

protoc --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb google/protobuf/timestamp.proto
protoc --dart_out=grpc:C:\proj\gpt\12345\front\app\lib\pb google/protobuf/any.proto