//
//  PeopleDetailView.swift
//  PeopleSwiftUI
//
//  Created by Alex on 17/07/2023.
//

import SwiftUI

struct PeopleDetailView: View {
    var people: People
    var body: some View {
        VStack(spacing: 20) {
            Image(people.imageName)
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
            Text(people.name)
                .font(.largeTitle)
            Text("\(people.age) ans")
            
        }.navigationBarTitle("\(people.name)", displayMode: .inline)
    }
}

struct PeopleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            PeopleDetailView(people: People(imageName: "people1", name: "Trunks", age: 18))
                .navigationBarTitle("Trunks", displayMode: .inline)
        }
    }
}
