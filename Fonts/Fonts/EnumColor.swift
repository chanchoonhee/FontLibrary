//
//  EnumPlist.swift
//  Fonts
//
//  Created by J on 2/20/17.
//  Copyright © 2017 Chan Choon Hee. All rights reserved.
//

import Foundation

class enumColor{
    
    enum colors {
        case B3
        case B4
        case B5
        case B6
        case P1
        case P2
        case S1
        case S2
        case S3
        case S5
        case S6
        case U4
        case AIARed
        case Grey
        case Citrus
        case Citrus80
        case Citrus60
        case Citrus40
        case Citrus20
        case Lime
        case Lime80
        case Lime60
        case Lime40
        case Lime20
        case Plum
        case Plum80
        case Plum60
        case Plum40
        case Plum20
        case Seablue
        case Seablue80
        case Seablue60
        case Seablue40
        case Seablue20
    }
    
    func color(_ colorName: colors) -> String {
        switch colorName {
        case .B3:
            return "B3"
        case .B4:
            return "B4"
        case .B5:
            return "B5"
        case .B6:
            return "B6"
        case .P1:
            return "P1"
        case .P2:
            return "P2"
        case .S1:
            return "S1"
        case .S2:
            return "S2"
        case .S3:
            return "S3"
        case .S5:
            return "S5"
        case .S6:
            return "S6"
        case .U4:
            return "U4"
        case .AIARed:
            return "AIARed"
        case .Grey:
            return "Grey"
        case .Citrus:
            return "Citrus"
        case .Citrus80:
            return "Citrus80"
        case .Citrus60:
            return "Citrus60"
        case .Citrus40:
            return "Cirtus40"
        case .Citrus20:
            return "Citrus20"
        case .Lime:
            return "Lime"
        case .Lime80:
            return "Lime80"
        case .Lime60:
            return "Lime60"
        case .Lime40:
            return "Lime40"
        case .Lime20:
            return "Lime20"
        case .Plum:
            return "Plum"
        case .Plum80:
            return "Plum80"
        case .Plum60:
            return "Plum60"
        case .Plum40:
            return "Plum40"
        case .Plum20:
            return "Plum20"
        case .Seablue:
            return "Seablue"
        case .Seablue80:
            return "Seablue80"
        case .Seablue60:
            return "Seablue60"
        case .Seablue40:
            return "Seablue40"
        case .Seablue20:
            return "Seablue20"
            
        }
    }
}
