source_filename = "Module"
target triple = "x86_64-pc-linux-gnu"

declare i32 @print_int(i32)
declare i32 @get_int()
declare i8* @get_map(i32)
declare i32 @print_map(i8*)

define i32 @square(i32) {
entry:
  %mult = mul i32 %0, %0
  ret i32 %mult
}

define i8* @map_me(i32) {
entry:
  %1 = call i8* @get_map(i32 %0)
  ret i8* %1
}

define i32 @main() {
entry:
  %0 = call i32 @get_int()
  %1 = call i32 @square(i32 %0)
  %2 = call i32 @print_int(i32 %1)
  %3 = call i8* @get_map(i32 %0)
  %4 = call i32 @print_map(i8* %3)
  ret i32 0
}