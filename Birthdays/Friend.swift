//
//  Friend.swift
//  Birthdays
//
//  Created by Grace Shen on 2025-07-11.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
}
