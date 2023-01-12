//
//  UserSearchViewModel.swift
//  swiftui-sample
//
//  Created by soonho kwon on 2023/01/06.
//

import Foundation
import Combine

class UserSearchViewModel: ObservableObject {
    
    let network: NetworkService
    var subscriptions = Set<AnyCancellable>()
    
    @Published private(set) var users = [User]()
    @Published var keyword = ""
    
    init() {
        self.network = NetworkService()
    }
    
    func search(keyword: String) {
        let resource: Resource<UserSearchResponse> = Resource(
            base: "https://api.github.com",
            path: "/search/users",
            params: ["q": keyword],
            headers: ["Content-Type": "application/json"]
        )
        
        network.load(resource)
            .map { $0.items }
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .assign(to: \.users, on: self)
            .store(in: &subscriptions)
    }
}
