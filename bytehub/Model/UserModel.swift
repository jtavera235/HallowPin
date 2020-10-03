//
//  UserModel.swift
//  bytehub
//
//  Created by Juan Tavera on 10/3/20.
//

import Foundation

/**
Represents the User Model protocol with all the methods.
 */
protocol UserModel {
    /**
     Rreturns a user's name.
     */
    func getName() throws ->String
    
    /**
     Returns a user's email.
     */
    func getEmail() throws ->String
    
    /**
     Returns a user's pins
     */
    
    /**
     Returns a user's map design preference.
     */
    func getMapPreference() throws -> MapType
    
    /**
     Returns a user's account type.
     */
    func getAccountType() throws -> AccountType
    
    /**
     Sets a user's account type.
     */
    func setAccountType(account: AccountType) throws
    
    /**
     Sets a user's email.
     */
    func setUserEmail(email: String) throws
    
    /**
     Sets a user's map preference
     */
    func setMapPreference(mapType: MapType) throws
    
    /**
     Adds a pin to a user's list of pins.
     */
    
    /**
     Determines if a user is authenticated.
     */
    func isAuth() -> Bool
    
    /**
     Deactivates a user's account
     */
    func deActivateAccount() throws
    
}
