//
//  LoginViewModel.swift
//  Mocking
//
//  Created by Prabh on 2022-06-24.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    var username: String = ""
    var password: String = ""
    @Published var isAuthenticated: Bool = false
    
    var service: Webservice
    
    init(service: Webservice) {
        self.service = service
    }
    
    func login(_ username: String, _ password: String) {
        DispatchQueue.main.async {
            self.isAuthenticated = self.service.authenticate(username, password)
        }
    }
}
