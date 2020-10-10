//
//  PinModel.swift
//  bytehub
//
//  Created by Juan Tavera on 10/10/20.
//

import Foundation

protocol PinModel {
    
    /**
     Sets a pin's title.
     */
    func setTitle(title: String)
    
    /**
     Sets a pin's description.
     */
    func setDescription(description: String)
    
    /**
     Return's a pin's title.
     */
    func getTitle() throws -> String
    
    /**
     Returns a pin's description.
     */
    func getDescription() throws -> String
    
    /**
     Returns a pin's address.
     */
    func getAddress() throws -> String
    
}
