//
//  ContainDecidable.swift
//  BlockyProgramming
//
//  Created by Julio Brazil on 28/12/17.
//  Copyright © 2017 Julio Brazil. All rights reserved.
//

import Foundation
import SpriteKit

protocol ContainDecidable {
    var decidableSnapPoint: CGPoint {get set}
    
    func snapDecidable(_ block: Executable)
}
