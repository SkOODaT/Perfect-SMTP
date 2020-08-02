// swift-tools-version:5.2

import PackageDescription
let package = Package(name: "PerfectSMTP",
	platforms: [
		.macOS(.v10_15)
	],
	products: [.library(name: "PerfectSMTP",targets: ["PerfectSMTP"]),],
    dependencies: [
        .package(name: "PerfectCURL", url: "https://github.com/123FLO321/Perfect-CURL.git", .branch("swift5")),
        .package(name: "PerfectCrypto", url: "https://github.com/123FLO321/Perfect-Crypto.git", .branch("swift5")),
        .package(name: "PerfectMIME", url: "https://github.com/123FLO321/Perfect-MIME.git", .branch("swift5")),
	],
    targets: [
        .target(
            name: "PerfectSMTP",
            dependencies: ["PerfectCURL", "PerfectCrypto", "PerfectMIME"]),
    ])
