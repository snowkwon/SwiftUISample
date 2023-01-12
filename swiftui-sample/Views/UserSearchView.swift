//
//  UserSearchView.swift
//  swiftui-sample
//
//  Created by soonho kwon on 2023/01/05.
//

import SwiftUI

struct UserSearchView: View {
    
    @ObservedObject var viewModel: UserSearchViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.users) { user in
                    UserSearchRow(user: user)
                }
            }
            .navigationTitle("Search")
        }
        .searchable(text: $viewModel.keyword)
        .onChange(of: viewModel.keyword, perform: { newValue in
            viewModel.search(keyword: newValue)
            print("change : \(newValue)")
        })
    }
}

struct UserSearchView_Previews: PreviewProvider {
    static var previews: some View {
        UserSearchView(viewModel: .init())
    }
}

