// swift-tools-version:5.7
import PackageDescription

let package = Package(
	name: "ExceptionCatcher",
	platforms: [
		.macOS(.v10_13),
		.iOS(.v11),
		.tvOS(.v11),
		.watchOS(.v4)
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
			name: "ExceptionCatcher",
			dependencies: [
				"ExceptionCatcherInternal"
			]
		),
		.target(
			name: "ExceptionCatcherInternal"
		),
		.testTarget(
			name: "ExceptionCatcherTests",
			dependencies: [
				"ExceptionCatcher"
			]
		)
	]
)
