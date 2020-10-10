//
//  Pin.swift
//  bytehub
//
//  Created by Juan Tavera on 10/10/20.
//

import Foundation

public class Pin: PinModel {
    
    
    
    var title: String?
    var description: String?
    var longitude: Double?
    var latitude: Double?
    var address: String?
    
    init(title: String, description: String, longitude: Double, latitude: Double, address: String) {
        self.title = title
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.address = address
    }

    
    func setTitle(title: String) {
        self.title = title
    }
    
    func setDescription(description: String) {
        self.description = description
    }
    
    func getTitle() throws -> String {
        if let title = self.title {
            return title
        }
        throw Errors.NULLVALUE("self.title is null")
    }
    
    func getDescription() throws -> String {
        if let description = self.description {
            return description
        }
        throw Errors.NULLVALUE("self.description is null")
    }
    
    func getAddress() throws -> String {
        if let address = self.address {
            return address
        }
        throw Errors.NULLVALUE("self.address is null")
    }
    
    
}
