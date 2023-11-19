//
//  OneView.swift
//  Navigation
//
//  Created by Daniel Mandea on 31.05.2023.
//

import SwiftUI

struct User: Codable, Identifiable, Hashable {
    var id: String
    var index: Int
    var name: String
    var age: String
}

let values = [
    User(id: "1", index: 1, name: "Daniel Mandea", age: "32"),
    User(id: "2", index: 2, name: "Mihalea Roxana Mandea", age: "33"),
    User(id: "3", index: 3, name: "Eftimie Mandea Jr", age: "35"),
    User(id: "4", index: 4, name: "Luciana Mandea", age: "32"),
    User(id: "5", index: 5, name: "Eftimie Mandea", age: "63"),
    User(id: "6", index: 1, name: "Andreea Mandea", age: "33"),
    User(id: "7", index: 2, name: "Ovidiu Mandea", age: "38"),
    User(id: "8", index: 3, name: "Adrian Mandea", age: "40"),
    User(id: "9", index: 4, name: "Costel Mandea", age: "65"),
    User(id: "10", index: 5, name: "Virgil Mandea", age: "68"),
    User(id: "11", index: 5, name: "Anca Mandea", age: "26"),
]

struct OneView: View {
    @State private var navPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navPath) {
            Button("Jump to random") {
                navPath.append(values.randomElement())
            }

            List(values) { value in
                NavigationLink(value: value) {
                    Text("\(value.name)")
                }
            }
//            .navigationDestination(for: Int.self) { i in
//                Text("Int Detail \(i)")
//            }
//            .navigationDestination(for: String.self) { i in
//                Text("String Detail \(i)")
//            }
            .navigationDestination(for: User.self) { value in
                Text("My name is \(value.name), age\(value.age)")
            }
            .navigationTitle("Users")
        }
    }
}

struct OneView_Previews: PreviewProvider {
    static var previews: some View {
        OneView()
    }
}
