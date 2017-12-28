//
//  ContainExecutable.swift
//  BlockyProgramming
//
//  Created by Julio Brazil on 18/12/17.
//  Copyright © 2017 Julio Brazil. All rights reserved.
//

import Foundation
import SpriteKit

protocol ContainExecutable {
    var executableSnapPoint: CGPoint {get set}
    
    func snapExacutable(_ block: Executable)
}
