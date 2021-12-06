/**
 *  RandomProjectName
 *  Copyright (c) NLUDB, Inc. 2021
 *  Licensed under the MIT license. See LICENSE file.
 */

import Foundation

let _SUFFIX_DIGITS = "abcdefghijklmnopqrstuvwxyz1234567890"

public extension String {
    static func randomProjectName(_ suffixLength: Int = 0, separatedBy: String = "-") -> String {
        if suffixLength == 0 {
            return "\(String.randomAdjective())\(separatedBy)\(String.randomNoun())"
        }

        let suffix = String(Array(0..<suffixLength).map { _ in _SUFFIX_DIGITS.randomElement()! })
        return "\(String.randomAdjective())\(separatedBy)\(String.randomNoun())\(separatedBy)\(suffix)"
   }
}
