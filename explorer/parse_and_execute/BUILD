# Part of the Carbon Language project, under the Apache License v2.0 with LLVM
# Exceptions. See /LICENSE for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

package(default_visibility = [
    "//explorer:__pkg__",
    "//explorer/fuzzing:__pkg__",
])

cc_library(
    name = "parse_and_execute",
    srcs = ["parse_and_execute.cpp"],
    hdrs = ["parse_and_execute.h"],
    deps = [
        "//common:check",
        "//common:error",
        "//explorer/common:trace_stream",
        "//explorer/interpreter:exec_program",
        "//explorer/interpreter:stack_space",
        "//explorer/syntax",
        "//explorer/syntax:prelude",
        "@llvm-project//llvm:Support",
    ],
)

cc_test(
    name = "parse_and_execute_test",
    srcs = ["parse_and_execute_test.cpp"],
    deps = [
        ":parse_and_execute",
        "//testing/util:gtest_main",
        "@com_google_googletest//:gtest",
    ],
)
