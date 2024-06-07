//
//  RaygunDetailView.swift
//  RaygunCatalogue
//
//  Created by Nik Wakelin on 28/05/2024.
//

import SwiftUI
import raygun4apple

struct RaygunDetailView: View {
  
  @State var gun : RaygunType
  
    var body: some View {
      NavigationView {
        
        VStack {
          Image(gun.imageName).clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
          
          Button(action: {
            
            let exception = NSException.init(name: .genericException, reason: "Pow! Just crashed from a \(gun.name) Raygun")
            
            
            RaygunClient.sharedInstance().send(exception: exception)
            
          }, label: {
            Text("Make it Crash!").padding()
          })
          
        }.padding()
        
      }.navigationTitle(gun.name)
    }
}

#Preview {
  RaygunDetailView(gun: RaygunType.all()[0])
}
