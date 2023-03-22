//
//  JSUtilsTests.swift
//  JSUtilsTests
//
//  Created by João on 21/03/23.
//

import XCTest
@testable import JSUtils

/*
 
 Validar formato de email
 Validar formato de senha
 
 */

final class JSUtilsTests: XCTestCase {
    func testEmailFormat() throws {
        XCTAssert("name@server.com".isEmailAddress)
    }
    
    func testEmailWithBadFormat() throws {
        XCTAssertFalse("@server.com".isEmailAddress)
        XCTAssertFalse("name@.com".isEmailAddress)
        XCTAssertFalse("name@server.".isEmailAddress)
        XCTAssertFalse("name@server".isEmailAddress)
        XCTAssertFalse("name-server.com".isEmailAddress)
        XCTAssertFalse("name@server-com".isEmailAddress)
        XCTAssertFalse("-@server.com".isEmailAddress)
    }
    
    func testPasswordFormat() throws {
        XCTAssert("format0Corret@".isPassword)
        XCTAssert("formato.Correto10".isPassword)
    }
    
    func testBadPasswordFormat() throws {
        XCTAssertFalse("1".isPassword)
        XCTAssertFalse("p".isPassword)
        XCTAssertFalse("P".isPassword)
        XCTAssertFalse("Password".isPassword)
        XCTAssertFalse("password@10".isPassword)
        XCTAssertFalse("@pass".isPassword)
    }
}
