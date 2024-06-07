//
//  ContentView.swift
//  RaygunCatalogue
//
//  Created by Nik Wakelin on 28/05/2024.
//

import SwiftUI

struct ContentView: View {
  
  @State var chosenType: String = "1"
  
  @State var rayguns = RaygunType.all()
  
    var body: some View {
      NavigationView {
        
        VStack {
          
          List(rayguns, id: \.uniqueID) { gun in

            NavigationLink(destination: RaygunDetailView(gun: gun)) {
              Text(gun.name)
            }
            
          }
          .navigationTitle("Raygun Types")
          .navigationBarTitleDisplayMode(.inline)
          
        }
      }
    }
}

#Preview {
  ContentView()
}
