// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.26.0
// source: pbentity/uprofile.proto

package pbentity

import (
	reflect "reflect"
	sync "sync"

	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	timestamppb "google.golang.org/protobuf/types/known/timestamppb"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type Uprofile struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id          string                 `protobuf:"bytes,1,opt,name=Id,proto3" json:"Id,omitempty"`                    //
	GroupId     string                 `protobuf:"bytes,2,opt,name=GroupId,proto3" json:"GroupId,omitempty"`          //
	OrgId       string                 `protobuf:"bytes,3,opt,name=OrgId,proto3" json:"OrgId,omitempty"`              //
	Uid         string                 `protobuf:"bytes,4,opt,name=Uid,proto3" json:"Uid,omitempty"`                  //
	Avatar      string                 `protobuf:"bytes,5,opt,name=Avatar,proto3" json:"Avatar,omitempty"`            //
	Nickname    string                 `protobuf:"bytes,6,opt,name=Nickname,proto3" json:"Nickname,omitempty"`        //
	Status      string                 `protobuf:"bytes,7,opt,name=Status,proto3" json:"Status,omitempty"`            //
	Des         string                 `protobuf:"bytes,8,opt,name=Des,proto3" json:"Des,omitempty"`                  //
	HomePage    string                 `protobuf:"bytes,9,opt,name=HomePage,proto3" json:"HomePage,omitempty"`        //
	Tags        string                 `protobuf:"bytes,10,opt,name=Tags,proto3" json:"Tags,omitempty"`               //
	ThemeMode   string                 `protobuf:"bytes,11,opt,name=ThemeMode,proto3" json:"ThemeMode,omitempty"`     //
	ThemeColor  int64                  `protobuf:"varint,12,opt,name=ThemeColor,proto3" json:"ThemeColor,omitempty"`  //
	Locale      string                 `protobuf:"bytes,13,opt,name=Locale,proto3" json:"Locale,omitempty"`           //
	Timezone    string                 `protobuf:"bytes,14,opt,name=Timezone,proto3" json:"Timezone,omitempty"`       //
	UseStream   bool                   `protobuf:"varint,15,opt,name=UseStream,proto3" json:"UseStream,omitempty"`    //
	SelectedBot string                 `protobuf:"bytes,16,opt,name=SelectedBot,proto3" json:"SelectedBot,omitempty"` //
	CreatedAt   *timestamppb.Timestamp `protobuf:"bytes,17,opt,name=CreatedAt,proto3" json:"CreatedAt,omitempty"`     //
	UpdatedAt   *timestamppb.Timestamp `protobuf:"bytes,18,opt,name=UpdatedAt,proto3" json:"UpdatedAt,omitempty"`     //
}

func (x *Uprofile) Reset() {
	*x = Uprofile{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pbentity_uprofile_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Uprofile) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Uprofile) ProtoMessage() {}

func (x *Uprofile) ProtoReflect() protoreflect.Message {
	mi := &file_pbentity_uprofile_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Uprofile.ProtoReflect.Descriptor instead.
func (*Uprofile) Descriptor() ([]byte, []int) {
	return file_pbentity_uprofile_proto_rawDescGZIP(), []int{0}
}

func (x *Uprofile) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *Uprofile) GetGroupId() string {
	if x != nil {
		return x.GroupId
	}
	return ""
}

func (x *Uprofile) GetOrgId() string {
	if x != nil {
		return x.OrgId
	}
	return ""
}

func (x *Uprofile) GetUid() string {
	if x != nil {
		return x.Uid
	}
	return ""
}

func (x *Uprofile) GetAvatar() string {
	if x != nil {
		return x.Avatar
	}
	return ""
}

func (x *Uprofile) GetNickname() string {
	if x != nil {
		return x.Nickname
	}
	return ""
}

func (x *Uprofile) GetStatus() string {
	if x != nil {
		return x.Status
	}
	return ""
}

func (x *Uprofile) GetDes() string {
	if x != nil {
		return x.Des
	}
	return ""
}

func (x *Uprofile) GetHomePage() string {
	if x != nil {
		return x.HomePage
	}
	return ""
}

func (x *Uprofile) GetTags() string {
	if x != nil {
		return x.Tags
	}
	return ""
}

func (x *Uprofile) GetThemeMode() string {
	if x != nil {
		return x.ThemeMode
	}
	return ""
}

func (x *Uprofile) GetThemeColor() int64 {
	if x != nil {
		return x.ThemeColor
	}
	return 0
}

func (x *Uprofile) GetLocale() string {
	if x != nil {
		return x.Locale
	}
	return ""
}

func (x *Uprofile) GetTimezone() string {
	if x != nil {
		return x.Timezone
	}
	return ""
}

func (x *Uprofile) GetUseStream() bool {
	if x != nil {
		return x.UseStream
	}
	return false
}

func (x *Uprofile) GetSelectedBot() string {
	if x != nil {
		return x.SelectedBot
	}
	return ""
}

func (x *Uprofile) GetCreatedAt() *timestamppb.Timestamp {
	if x != nil {
		return x.CreatedAt
	}
	return nil
}

func (x *Uprofile) GetUpdatedAt() *timestamppb.Timestamp {
	if x != nil {
		return x.UpdatedAt
	}
	return nil
}

var File_pbentity_uprofile_proto protoreflect.FileDescriptor

var file_pbentity_uprofile_proto_rawDesc = []byte{
	0x0a, 0x17, 0x70, 0x62, 0x65, 0x6e, 0x74, 0x69, 0x74, 0x79, 0x2f, 0x75, 0x70, 0x72, 0x6f, 0x66,
	0x69, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x08, 0x70, 0x62, 0x65, 0x6e, 0x74,
	0x69, 0x74, 0x79, 0x1a, 0x1f, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x62, 0x75, 0x66, 0x2f, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x22, 0x90, 0x04, 0x0a, 0x08, 0x55, 0x70, 0x72, 0x6f, 0x66, 0x69, 0x6c,
	0x65, 0x12, 0x0e, 0x0a, 0x02, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x49,
	0x64, 0x12, 0x18, 0x0a, 0x07, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x07, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x49, 0x64, 0x12, 0x14, 0x0a, 0x05, 0x4f,
	0x72, 0x67, 0x49, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x4f, 0x72, 0x67, 0x49,
	0x64, 0x12, 0x10, 0x0a, 0x03, 0x55, 0x69, 0x64, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03,
	0x55, 0x69, 0x64, 0x12, 0x16, 0x0a, 0x06, 0x41, 0x76, 0x61, 0x74, 0x61, 0x72, 0x18, 0x05, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x06, 0x41, 0x76, 0x61, 0x74, 0x61, 0x72, 0x12, 0x1a, 0x0a, 0x08, 0x4e,
	0x69, 0x63, 0x6b, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x4e,
	0x69, 0x63, 0x6b, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x53, 0x74, 0x61, 0x74, 0x75,
	0x73, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x12,
	0x10, 0x0a, 0x03, 0x44, 0x65, 0x73, 0x18, 0x08, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x44, 0x65,
	0x73, 0x12, 0x1a, 0x0a, 0x08, 0x48, 0x6f, 0x6d, 0x65, 0x50, 0x61, 0x67, 0x65, 0x18, 0x09, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x08, 0x48, 0x6f, 0x6d, 0x65, 0x50, 0x61, 0x67, 0x65, 0x12, 0x12, 0x0a,
	0x04, 0x54, 0x61, 0x67, 0x73, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x54, 0x61, 0x67,
	0x73, 0x12, 0x1c, 0x0a, 0x09, 0x54, 0x68, 0x65, 0x6d, 0x65, 0x4d, 0x6f, 0x64, 0x65, 0x18, 0x0b,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x54, 0x68, 0x65, 0x6d, 0x65, 0x4d, 0x6f, 0x64, 0x65, 0x12,
	0x1e, 0x0a, 0x0a, 0x54, 0x68, 0x65, 0x6d, 0x65, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x18, 0x0c, 0x20,
	0x01, 0x28, 0x03, 0x52, 0x0a, 0x54, 0x68, 0x65, 0x6d, 0x65, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x12,
	0x16, 0x0a, 0x06, 0x4c, 0x6f, 0x63, 0x61, 0x6c, 0x65, 0x18, 0x0d, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x06, 0x4c, 0x6f, 0x63, 0x61, 0x6c, 0x65, 0x12, 0x1a, 0x0a, 0x08, 0x54, 0x69, 0x6d, 0x65, 0x7a,
	0x6f, 0x6e, 0x65, 0x18, 0x0e, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x54, 0x69, 0x6d, 0x65, 0x7a,
	0x6f, 0x6e, 0x65, 0x12, 0x1c, 0x0a, 0x09, 0x55, 0x73, 0x65, 0x53, 0x74, 0x72, 0x65, 0x61, 0x6d,
	0x18, 0x0f, 0x20, 0x01, 0x28, 0x08, 0x52, 0x09, 0x55, 0x73, 0x65, 0x53, 0x74, 0x72, 0x65, 0x61,
	0x6d, 0x12, 0x20, 0x0a, 0x0b, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x65, 0x64, 0x42, 0x6f, 0x74,
	0x18, 0x10, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x65, 0x64,
	0x42, 0x6f, 0x74, 0x12, 0x38, 0x0a, 0x09, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74,
	0x18, 0x11, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61,
	0x6d, 0x70, 0x52, 0x09, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74, 0x12, 0x38, 0x0a,
	0x09, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74, 0x18, 0x12, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62,
	0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x52, 0x09, 0x55, 0x70,
	0x64, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74, 0x42, 0x14, 0x5a, 0x12, 0x31, 0x32, 0x33, 0x34, 0x35,
	0x2f, 0x61, 0x70, 0x69, 0x2f, 0x70, 0x62, 0x65, 0x6e, 0x74, 0x69, 0x74, 0x79, 0x62, 0x06, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_pbentity_uprofile_proto_rawDescOnce sync.Once
	file_pbentity_uprofile_proto_rawDescData = file_pbentity_uprofile_proto_rawDesc
)

func file_pbentity_uprofile_proto_rawDescGZIP() []byte {
	file_pbentity_uprofile_proto_rawDescOnce.Do(func() {
		file_pbentity_uprofile_proto_rawDescData = protoimpl.X.CompressGZIP(file_pbentity_uprofile_proto_rawDescData)
	})
	return file_pbentity_uprofile_proto_rawDescData
}

var file_pbentity_uprofile_proto_msgTypes = make([]protoimpl.MessageInfo, 1)
var file_pbentity_uprofile_proto_goTypes = []interface{}{
	(*Uprofile)(nil),              // 0: pbentity.Uprofile
	(*timestamppb.Timestamp)(nil), // 1: google.protobuf.Timestamp
}
var file_pbentity_uprofile_proto_depIdxs = []int32{
	1, // 0: pbentity.Uprofile.CreatedAt:type_name -> google.protobuf.Timestamp
	1, // 1: pbentity.Uprofile.UpdatedAt:type_name -> google.protobuf.Timestamp
	2, // [2:2] is the sub-list for method output_type
	2, // [2:2] is the sub-list for method input_type
	2, // [2:2] is the sub-list for extension type_name
	2, // [2:2] is the sub-list for extension extendee
	0, // [0:2] is the sub-list for field type_name
}

func init() { file_pbentity_uprofile_proto_init() }
func file_pbentity_uprofile_proto_init() {
	if File_pbentity_uprofile_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_pbentity_uprofile_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Uprofile); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pbentity_uprofile_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   1,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_pbentity_uprofile_proto_goTypes,
		DependencyIndexes: file_pbentity_uprofile_proto_depIdxs,
		MessageInfos:      file_pbentity_uprofile_proto_msgTypes,
	}.Build()
	File_pbentity_uprofile_proto = out.File
	file_pbentity_uprofile_proto_rawDesc = nil
	file_pbentity_uprofile_proto_goTypes = nil
	file_pbentity_uprofile_proto_depIdxs = nil
}