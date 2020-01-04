// swift-tools-version:5.1
import PackageDescription

let package = Package(
	name: "ExceptionCatcher",
	platforms: [
		.macOS(.v10_10),
		.iOS(.v8),
		.tvOS(.v9),
		.watchOS(.v2)
	],
	products: [
		.library(
			name: "ExceptionCatcher",
			targets: [
				"ExceptionCatcher"
			]
		)
	],
	targets: [
		.target(
			name: "Internal"
		),
		.target(
			name: "ExceptionCatcher",
			dependencies: [
				"Internal"
			]
		),
		.testTarget(
			name: "ExceptionCatcherTests",
			dependencies: [
				"ExceptionCatcher"
			]
		)
	]
)
