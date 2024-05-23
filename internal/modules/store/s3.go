package store

import (
	"context"
	"time"

	"github.com/minio/minio-go/v7"
	"github.com/minio/minio-go/v7/pkg/credentials"

	"github.com/gogf/gf/v2/os/glog"
	"github.com/gogf/gf/v2/util/guid"
)

type minioClient struct {
	client   *minio.Client
	endpoint string
	bucket   string
	schema   string
}

func (c *minioClient) GetObj(ctx context.Context, obj string) ([]byte, error) {
	return nil, nil
}

func (c *minioClient) PreSignedPut(ctx context.Context, obj string) (string, string, error) {
	glog.Debug(ctx, "PreSignedPut", obj, c.bucket)
	obj = guid.S() + "_" + obj
	preSignedUrl, err := c.client.PresignedPutObject(ctx, c.bucket, obj, time.Duration(10)*time.Minute)
	if err != nil {
		glog.Error(ctx, "PpsuedPutObject "+obj+" failed", err)
		return "", "", err
	}
	return preSignedUrl.String(), c.schema + "://" + c.endpoint + "/" + c.bucket + "/" + obj, nil
}

func InitStoreS3(endpoint, schema, bucket, accessKey, secretKey string) {
	if schema == "" {
		schema = "https"
	}
	miniocli := newMinioClient(endpoint, accessKey, secretKey)
	SetAPI(&minioClient{client: miniocli, bucket: bucket, schema: schema, endpoint: endpoint})
}

func newMinioClient(endpoint, accessKey, secretKey string) *minio.Client {

	glog.Debug(context.Background(), "endpoint:", endpoint, "accessKey:", accessKey, "secretKey:", secretKey)

	minioClient, err := minio.New(endpoint, &minio.Options{
		Creds:  credentials.NewStaticV4(accessKey, secretKey, ""),
		Secure: true,
	})
	if err != nil {
		panic(err)
	}
	return minioClient
}
