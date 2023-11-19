//
//  SecondView.swift
//  Navigation
//
//  Created by Daniel Mandea on 31.05.2023.
//

import SwiftUI


struct SecondView: View {
    
    @State private var path = [User]()
    
    var body: some View {
        
        
        List(values) { value in
            NavigationLink(value: value) {
                Text("\(value.name)")
            }
        }
        .navigationDestination(for: User.self) { value in
            VStack {
                Text("Detail \(value.name)")
                
                Button("Go to Next") {
                    path.append(values.randomElement() ?? User(id: "99", index: 99, name: "Hello", age: "34"))
                }
            }
        }
        .navigationTitle("Users")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
