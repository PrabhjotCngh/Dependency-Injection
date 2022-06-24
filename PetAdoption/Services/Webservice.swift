//
//  Webservice.swift
//  PetAdoption
//
//  Created by Prabh on 2022-06-24.
//

import Foundation

protocol Webservice {
    func authenticate(_ username: String, _ password: String) -> Bool
}

class PetAdoptionService: Webservice {
    func authenticate(_ username: String, _ password: String) -> Bool {
        sleep(5)
        return true
    }
}

class FakeAuthService: Webservice {
    func authenticate(_ username: String, _ password: String) -> Bool {
        print("FakeAuthService")
        return true
    }
}
