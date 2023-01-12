//
//  swiftui_sampleApp.swift
//  swiftui-sample
//
//  Created by soonho kwon on 2023/01/05.
//

import SwiftUI

@main
struct swiftui_sampleApp: App {
    var body: some Scene {
        WindowGroup {
            UserSearchView(viewModel: .init())
        }
    }
}
