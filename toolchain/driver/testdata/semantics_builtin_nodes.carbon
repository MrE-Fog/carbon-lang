// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// RUN: %{carbon} dump semantics-ir --include_builtins %s | \
// RUN:   %{FileCheck-strict}
// CHECK:STDOUT: cross_reference_irs_size: 1
// CHECK:STDOUT: functions: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: integer_literals: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: real_literals: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: strings: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: types: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: nodes: [
// CHECK:STDOUT:   {kind: CrossReference, arg0: ir0, arg1: nodeTypeType, type: typeTypeType},
// CHECK:STDOUT:   {kind: CrossReference, arg0: ir0, arg1: nodeError, type: typeError},
// CHECK:STDOUT:   {kind: CrossReference, arg0: ir0, arg1: nodeBoolType, type: typeTypeType},
// CHECK:STDOUT:   {kind: CrossReference, arg0: ir0, arg1: nodeIntegerType, type: typeTypeType},
// CHECK:STDOUT:   {kind: CrossReference, arg0: ir0, arg1: nodeFloatingPointType, type: typeTypeType},
// CHECK:STDOUT:   {kind: CrossReference, arg0: ir0, arg1: nodeStringType, type: typeTypeType},
// CHECK:STDOUT:   {kind: CrossReference, arg0: ir0, arg1: nodeEmptyTupleType, type: typeTypeType},
// CHECK:STDOUT: ]
// CHECK:STDOUT: node_blocks: [
// CHECK:STDOUT:   [
// CHECK:STDOUT:   ],
// CHECK:STDOUT: ]
