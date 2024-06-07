//
//  RaygunCatalogueApp.swift
//  RaygunCatalogue
//
//  Created by Nik Wakelin on 28/05/2024.
//

import SwiftUI
import raygun4apple

@main
struct RaygunCatalogueApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView().onAppear(perform: {
            
            let raygunClient = RaygunClient.sharedInstance(apiKey: "YOUR_API_KEY_HERE")
            raygunClient.enableCrashReporting()
            raygunClient.enableNetworkPerformanceMonitoring()
            
            let userInformation = RaygunUserInformation(identifier: "user@raygun.com", email: "user@raygun.com", fullName: "Test User", firstName: "Test")
            raygunClient.userInformation = userInformation
            raygunClient.enableRealUserMonitoring()

          })
        }
    }
}
