import XCTest
import SwiftTreeSitter
import TreeSitterVKTL

final class TreeSitterVKTLTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_vktl())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading VKTL grammar")
    }
}
