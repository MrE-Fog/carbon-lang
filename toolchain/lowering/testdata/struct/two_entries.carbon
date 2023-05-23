// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// CHECK:STDOUT: ; ModuleID = 'two_entries.carbon'
// CHECK:STDOUT: source_filename = "two_entries.carbon"
// CHECK:STDOUT:
// CHECK:STDOUT: %StructLiteralType = type { i32, i32 }
// CHECK:STDOUT: %StructLiteralType.0 = type { i32, i32 }
// CHECK:STDOUT: %StructLiteralType.1 = type { i32, i32 }
// CHECK:STDOUT:
// CHECK:STDOUT: define i32 @Run() {
// CHECK:STDOUT: entry:
// CHECK:STDOUT:   %var = alloca %StructLiteralType, align 8
// CHECK:STDOUT:   %StructLiteralValue = alloca %StructLiteralType.0, align 8
// CHECK:STDOUT:   %a = getelementptr inbounds %StructLiteralType.0, ptr %StructLiteralValue, i32 0, i32 0
// CHECK:STDOUT:   store i32 1, ptr %a, align 4
// CHECK:STDOUT:   %b = getelementptr inbounds %StructLiteralType.0, ptr %StructLiteralValue, i32 0, i32 1
// CHECK:STDOUT:   store i32 2, ptr %b, align 4
// CHECK:STDOUT:   store ptr %StructLiteralValue, ptr %var, align 8
// CHECK:STDOUT:   %var1 = alloca %StructLiteralType.1, align 8
// CHECK:STDOUT:   store ptr %var, ptr %var1, align 8
// CHECK:STDOUT:   ret i32 0
// CHECK:STDOUT: }

fn Run() -> i32 {
  var x: {.a: i32, .b: i32} = {.a = 1, .b = 2};
  var y: {.a: i32, .b: i32} = x;
  return 0;
}