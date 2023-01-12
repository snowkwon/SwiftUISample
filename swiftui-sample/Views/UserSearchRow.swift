//
//  UserSearchRow.swift
//  swiftui-sample
//
//  Created by soonho kwon on 2023/01/06.
//

import SwiftUI

struct UserSearchRow: View {
    
    @State var user: User
    
    var body: some View {
        HStack(spacing: 15) {
            AsyncImage(url: URL(string: user.avatarUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:40, height:40)
            } placeholder: {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:40, height:40)
            }

            Text(user.login)
                .font(.system(size: 17))
                
        }
    }
}

struct UserSearchRow_Previews: PreviewProvider {
    static var previews: some View {
        UserSearchRow(user: User(id: 0, login: "SwiftUI", avatarUrl: "", htmlUrl: ""))
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
