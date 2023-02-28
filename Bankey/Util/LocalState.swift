//
//  LocalState.swift
//  Bankey
//
//  Created by Nicolas Dolinkue on 21/02/2023.
//

import Foundation

public class LocalState {
    
    private enum Keys: String {
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}

extension Notification.Name {
     static let logout = Notification.Name("Logout")
}
