#!/bin/bash

echo "You must have protoc installed and in your path."
echo "The protobuf compiler version *must* match the java version in project"
VERSION=`protoc --version`
echo "protobuf compile version: $VERSION"

wget https://raw.githubusercontent.com/BVLC/caffe/master/src/caffe/proto/caffe.proto -O caffe.proto

protoc --java_out=java caffe.proto

rm caffe.proto
