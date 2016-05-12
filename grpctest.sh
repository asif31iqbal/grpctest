SRC_DIR=/home/local/SYSOMOS/aiqbal/workspace/grpctest/src/main/proto
DST_DIR=/home/local/SYSOMOS/aiqbal/workspace/grpctest/src/main/java

protoc -I="$SRC_DIR" --java_out="$DST_DIR" "$SRC_DIR"/helloworld.proto
protoc --plugin=protoc-gen-grpc-java=/home/local/SYSOMOS/aiqbal/workspace/grpc-java/compiler/build/exe/java_plugin/protoc-gen-grpc-java \
  --grpc-java_out="$DST_DIR" --proto_path="$SRC_DIR" "$SRC_DIR/helloworld.proto"

