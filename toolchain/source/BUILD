# Part of the Carbon Language project, under the Apache License v2.0 with LLVM
# Exceptions. See /LICENSE for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

package(default_visibility = ["//visibility:public"])

cc_library(
    name = "source_buffer",
    srcs = ["source_buffer.cpp"],
    hdrs = ["source_buffer.h"],
    deps = [
        "//common:error",
        "@llvm-project//llvm:Support",
    ],
)

cc_test(
    name = "source_buffer_test",
    size = "small",
    srcs = ["source_buffer_test.cpp"],
    deps = [
        ":source_buffer",
        "//testing/util:gtest_main",
        "@com_google_googletest//:gtest",
        "@llvm-project//llvm:Support",
    ],
)
