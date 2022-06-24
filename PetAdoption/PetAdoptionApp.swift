//
//  PetAdoptionApp.swift
//  PetAdoption
//
//  Created by Prabh on 2022-06-24.
//

import SwiftUI

@main
struct PetAdoptionApp: App {
    var body: some Scene {
        WindowGroup {
            let webserviceFactory = WebserviceFactory()
            LoginScreen(loginVM: LoginViewModel(service: webserviceFactory.create()))
        }
    }
}
