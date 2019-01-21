//
//  NSLocalizedString.swift
//  POC Localization
//
//  Created by Nishanth B S on 21/01/19.
//  Copyright © 2019 Nuclei. All rights reserved.
//

import Foundation

private class Localizer{
    
    static let sharedInstance = Localizer()
    
    lazy var localizableDictionary: NSDictionary! = {
        if let path = Bundle.main.path(forResource: "Localizable", ofType: "plist") {
            return NSDictionary(contentsOfFile: path)
        }
        fatalError("Localizable file NOT found")
    }()
    
    func localize(string: String) -> String {
        guard let localizedString = localizableDictionary[string] as? String else {
            assertionFailure("Missing translation for: \(string)")
            return ""
        }
        return localizedString
    }
}

extension String {
    var localized: String {
        return Localizer.sharedInstance.localize(string: self)
    }
}
