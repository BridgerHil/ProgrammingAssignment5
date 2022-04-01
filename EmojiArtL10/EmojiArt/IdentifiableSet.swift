//
//  IdentifiableSet.swift
//  EmojiArt
//
//  Created by Bridger Hildreth on 4/1/22.
//

import Foundation

extension Set where Element: Identifiable {
    mutating func toggleMatch(_ element: Element) {
        if let matchIndex = firstIndex(where: { $0.id == element.id }) {
            remove(at: matchIndex)
        } else {
            insert(element)
        }
    }
    func containsMatch(_ element: Element) -> Bool {
        contains(where: { $0.id == element.id})
    }
}
