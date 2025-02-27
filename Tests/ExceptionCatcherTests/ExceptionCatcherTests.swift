import Testing
import Foundation
import ExceptionCatcher

final class Fixture: NSObject {}

@Suite("ExceptionCatcher Tests")
struct ExceptionCatcherTests {
	@Test("Throws error when accessing non-existent key")
	func testExceptionCatcherThrows() async throws {
		let fixture = Fixture()

		#expect(throws: NSError.self) {
			try ExceptionCatcher.catch {
				fixture.value(forKey: "nope")
			}
		}
	}

	@Test("Successfully returns value when no exception occurs")
	func testExceptionCatcherSuccess() async throws {
		let fixtureString = "🦄"

		#expect(throws: Never.self) {
			try ExceptionCatcher.catch { fixtureString }
		}

		let result = try ExceptionCatcher.catch { fixtureString }
		#expect(result == fixtureString)
	}
}
