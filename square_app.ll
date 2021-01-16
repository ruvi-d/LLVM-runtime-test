source_filename = "Module"
target triple = "x86_64-pc-linux-gnu"

declare i32 @print_int(i32)
declare i32 @get_int()

define i32 @square(i32) {
entry:
  %mult = mul i32 %0, %0
  ret i32 %mult
}

define i32 @main() {
entry:
  %0 = call i32 @get_int()
  %1 = call i32 @square(i32 %0)
  %2 = call i32 @print_int(i32 %1)
  ret i32 0
}