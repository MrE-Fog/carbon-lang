// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// CHECK:STDOUT: [
// CHECK:STDOUT:     {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {kind: 'Name', text: 'F'},
// CHECK:STDOUT:       {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:     {kind: 'ParameterList', text: ')', subtree_size: 2},
// CHECK:STDOUT:   {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:     {kind: 'ReturnStatementStart', text: 'return'},
// CHECK:STDOUT:     {kind: 'InvalidParse', text: '}', has_error: yes},
// CHECK:STDOUT:   {kind: 'ReturnStatement', text: 'return', has_error: yes, subtree_size: 3},
// CHECK:STDOUT: {kind: 'FunctionDefinition', text: '}', subtree_size: 9},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

fn F() {
  return
// CHECK:STDERR: fail_no_semi.carbon:[[@LINE+2]]:1: Expected expression.
// CHECK:STDERR: fail_no_semi.carbon:[[@LINE+1]]:1: `return` statements must end with a `;`.
}
