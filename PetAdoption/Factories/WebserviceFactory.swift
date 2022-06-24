//
//  WebserviceFactory.swift
//  PetAdoption
//
//  Created by Prabh on 2022-06-24.
//

import Foundation

class WebserviceFactory {
    
    func create() -> Webservice {
        
        let environment = ProcessInfo.processInfo.environment["ENV"]
        if environment == "TEST" {
            return FakeAuthService()
        } else {
            return PetAdoptionService() 
        }
        
    }
    
}
