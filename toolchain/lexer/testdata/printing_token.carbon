// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// CHECK:STDOUT: [

// CHECK:STDOUT: { index: 0, kind: 'IntegerLiteral', line: {{ *}}[[@LINE+3]], column: 1, indent: 1, spelling: '0x9', value: `9`, has_trailing_space: true },
// CHECK:STDOUT: { index: 1, kind:      'EndOfFile', line: {{ *}}[[@LINE+2]], column: {{[0-9]+}}, indent: 1, spelling: '' },
// CHECK:STDOUT: ]
0x9
