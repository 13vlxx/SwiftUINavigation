//
//  ContentView.swift
//  PeopleSwiftUI
//
//  Created by Alex on 17/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List(People.default){ people in
                
                NavigationLink(destination: PeopleDetailView(people: people)){
                    PeopleView(people: people)
                }
            }.navigationBarTitle("Mes saiyans", displayMode: .large)
        }

        // .ignoresSafeArea()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PeopleView: View {
    var people: People
    
    var body: some View {
        HStack {
            Image(people.imageName)
                .resizable() // Permet de redimensionner l'image
                .frame(width: 100, height: 100) // Définit les dimensions de l'image
                .clipShape(Circle())
            Text(people.name)
                .font(.title)
            
        }.padding()
    }
}
