//
//  User.swift
//  swiftui-sample
//
//  Created by soonho kwon on 2023/01/09.
//

import Foundation

struct User: Codable, Identifiable {
    var id: Int64
    var login: String
    var avatarUrl: String
    var htmlUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case login
        case avatarUrl = "avatar_url"
        case htmlUrl = "html_url"
    }
}
