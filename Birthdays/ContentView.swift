//
//  ContentView.swift
//  Birthdays
//
//  Created by Grace Shen on 2025-07-11.
//

import SwiftUI

struct ContentView: View {
    @State private var newName = ""
    @State private var newBirthday = Date.now
    @State private var friends: [Friend] = [
        Friend(name: "Grace", birthday: .now),
        Friend(name: "Amy", birthday: .now)
    ]
    
    var body: some View {
        NavigationStack {
            List(friends, id: \.name) { friend in
                    HStack {
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
                
            }
            
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                    
                    DatePicker(selection: $newBirthday, in: Date.distantPast...Date.now, displayedComponents: .date) {
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Button("Save") {
                        let newFriend = Friend(name: newName, birthday: newBirthday)
                        friends.append(newFriend)
                        newName = "" //remove?
                        newBirthday = .now
                    }
                    .bold()
                }
                
                .padding()
                .background(.bar)
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
