protoc --cpp_out=. auth.proto 
protoc --cpp_out=. rpc.proto
protoc --cpp_out=. kv.proto 
protoc --cpp_out=. etcdserver.proto 
protoc -I ./ --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` kv.proto 
protoc -I ./ --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` rpc.proto 
protoc -I ./ --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` auth.proto 
protoc -I ./ --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` etcdserver.proto