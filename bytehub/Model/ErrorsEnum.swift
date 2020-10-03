//
//  ErrorsEnum.swift
//  bytehub
//
//  Created by Juan Tavera on 10/3/20.
//

import Foundation

/**
 Represents the different possible errors as an Enum which can then be thrown.
 */
public enum Errors: Error {
    case NULLVALUE(String)
}
