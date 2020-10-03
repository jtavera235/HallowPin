//
//  User.swift
//  bytehub
//
//  Created by Juan Tavera on 10/3/20.
//

import Foundation


/**
 Represnts an implentation of the User Model.
 */
class User: UserModel {

    var name: String?
    
    var email: String?
    
    var isAuthenticated = false
    
    var mapType: MapType?
    
    var accountType: AccountType?
    
    /**
     Constructor for a User Model
     */
    init(name: String, email: String, isAuthenticated: Bool, mapType: MapType, accountType: AccountType) {
        self.name = name
        self.email = email
        self.isAuthenticated = isAuthenticated
        self.mapType = mapType
        self.accountType = accountType
    }
    
    /**
     Constructor for a User Model for account creation process
     */
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
    
    
    func getName() throws -> String {
        if let name = self.name {
            return name
        }
        throw Errors.NULLVALUE("self.name is null.")
    }
    
    func getEmail() throws -> String {
        if let email = self.email {
            return email
        }
        throw Errors.NULLVALUE("self.email is null.")
    }
    
    func setUserEmail(email: String) throws {
        self.email = email
    }
    
    func isAuth() -> Bool {
        return self.isAuthenticated
    }
    
    
    func getMapPreference() throws -> MapType {
        if let map = self.mapType {
            return map
        }
        throw Errors.NULLVALUE("self.mapType is null.")
    }
    
    func getAccountType() throws -> AccountType {
        if let accountT = self.accountType {
            return accountT
        }
        throw Errors.NULLVALUE("self.accountType is null.")
    }
    
    func setAccountType(account: AccountType) throws {
        self.accountType = account
    }
    
    func setMapPreference(mapType: MapType) throws {
        self.mapType = mapType
    }
    
    // TODO: Deactivate user account
    func deActivateAccount() throws {
        
    }
    
    
}

/**
 Represents whether the user is paying or if it is a free account.
 */
public enum AccountType {
    case Free
    case Premium
}

/**
 Represents a user's map preference.
 */
public enum MapType {
    case Default
    case Classic
    case Dark
}
