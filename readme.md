# ExceptionCatcher

> Catch Objective-C exceptions in Swift

There are many Cocoa APIs that can throw exceptions that cannot be caught in Swift (`NSKeyedUnarchiver`, `NSTask`,  `NSObject#value(forKey:)`, etc). This package wraps an Objective-C exception handler to make it possible to catch such exceptions.

*The ability to catch exceptions should really be built into Swift. If you agree, duplicate [this](https://github.com/feedback-assistant/reports/issues/74) Feedback Assistant report.*

## Install

Add the following to your Package.swift:

```swift
.package(url: "https://github.com/sindresorhus/ExceptionCatcher", from: "0.0.0")
```

Or add the package in Xcode.

## Usage

```swift
import Foundation
import ExceptionCatcher

final class Foo: NSObject {}

do {
	let value = try ExceptionCatcher.catch {
		return Foo().value(forKey: "nope")
	}

	print("Value:", value)
} catch {
	print("Error:", error.localizedDescription)
	//=> Error: The operation couldn’t be completed. [valueForUndefinedKey:]: this class is not key value coding-compliant for the key nope.
}
```

## Related

- [Defaults](https://github.com/sindresorhus/Defaults) - Swifty and modern UserDefaults
- [Preferences](https://github.com/sindresorhus/Preferences) - Add a preferences window to your macOS app
- [LaunchAtLogin](https://github.com/sindresorhus/LaunchAtLogin) - Add “ Launch at Login” functionality to your macOS app
- [More…](https://github.com/search?q=user%3Asindresorhus+language%3Aswift)
