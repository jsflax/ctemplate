// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ctemplate",
    platforms: [
        .iOS(.v12), .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "ctemplate",
            targets: ["ctemplate"]),
    ],
    targets: [
        .target(name: "ctemplate",
                path: ".",
                sources: [
                    "src/htmlparser/htmlparser.cc",
                    "src/htmlparser/jsparser.cc",
                    "src/htmlparser/statemachine.cc",
                    "src/per_expand_data.cc",
                    "src/template_annotator.cc",
                    "src/template_cache.cc",
                    "src/template_dictionary.cc",
                    "src/template_modifiers.cc",
                    "src/template_namelist.cc",
                    "src/template_pathops.cc",
                    "src/template_string.cc",
                    "src/template.cc",
                    "src/base/arena.cc"
                ],
                // windows include happens to contain the correct public headers
                publicHeadersPath: "src/windows/include",
                cSettings: [.headerSearchPath("src/htmlparser"),
                            .headerSearchPath("src")])
    ]
)
