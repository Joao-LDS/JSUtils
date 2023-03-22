//
//  Extension+String.swift
//  JSUtils
//
//  Created by João on 21/03/23.
//

import Foundation

extension String {
    public var isEmailAddress: Bool {
        let emailPattern = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emailRegex = try? NSRegularExpression(pattern: emailPattern)
        let range = NSRange(self.startIndex..<self.endIndex, in: self)
        let result = emailRegex?.matches(in: self, range: range)
        return result?.isNotEmpty ?? false
    }
    
    public var isPassword: Bool {
        let passwordPattern = "(?=.*[A-Z])(?=.*[!@#$&*%.])(?=.*[0-9])(?=.*[a-z]).{8,}"
        let passwordRegex = try? NSRegularExpression(pattern: passwordPattern)
        let range = NSRange(self.startIndex..<self.endIndex, in: self)
        let result = passwordRegex?.matches(in: self, range: range)
        return result?.isNotEmpty ?? false
    }
}
