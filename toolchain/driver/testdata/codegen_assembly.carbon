// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// RUN: %{carbon} dump assembly --target_triple=x86_64-unknown-linux-gnu %s | %{FileCheck-allow-unmatched}
// CHECK:STDOUT: Main:

fn Main() -> i32 { return 0; }
