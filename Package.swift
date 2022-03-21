// swift-tools-version:5.2

import PackageDescription
let package = Package(name: "PerfectSMTP",
	platforms: [
		.macOS(.v10_15)
	],
	products: [.library(name: "PerfectSMTP",targets: ["PerfectSMTP"]),],
    dependencies: [
        .package(name: "PerfectCURL", url: "https://github.com/SkOODaT/Perfect-CURL.git", .branch("SKOODAT")),
        .package(name: "PerfectCrypto", url: "https://github.com/SkOODaT/Perfect-Crypto.git", .branch("SKOODAT")),
        .package(name: "PerfectMIME", url: "https://github.com/SkOODaT/Perfect-MIME.git", .branch("SKOODAT")),
	],
    targets: [
        .target(
            name: "PerfectSMTP",
            dependencies: ["PerfectCURL", "PerfectCrypto", "PerfectMIME"]),
    ])
