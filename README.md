# C++ Runtime for LLVM IR

## Compile runtime directly
`clang++-11 square_app.ll runtime.cpp -o app`
`./app`

## Compile runtime as lib
`clang++-11 -shared -o libruntime.so runtime.cpp`
`clang++-11 -L$PWD -lruntime -o app square_app.ll`
`export LD_LIBRARY_PATH=$(pwd)`
`./app`