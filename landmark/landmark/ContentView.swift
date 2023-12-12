//
//  ContentView.swift
//  landmark
//
//  Created by Igor Santana on 27/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top) // isso serve para ignorar a safe area
            
            Image("turtlerock")
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                    .offset(y:-130)
                    .padding(.bottom,-130)
            
                
            VStack(alignment: .leading) {
                Text("Turtle rock")
                .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                            Spacer()// essa função separa horizontalmente o texto1 do texto2
                    Text("California")
                        .font(.subheadline)
           }
                Divider()
                Text("About turtle rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
        }
            .padding()
            Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
