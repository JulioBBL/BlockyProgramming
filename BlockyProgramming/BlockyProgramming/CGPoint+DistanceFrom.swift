//
//  CGPoint+DistanceFrom.swift
//  BlockyProgramming
//
//  Created by Julio Brazil on 14/12/17.
//  Copyright © 2017 Julio Brazil. All rights reserved.
//

import Foundation
import SpriteKit

extension CGPoint {
    func distanceFrom(_ point: CGPoint) -> CGFloat{
        let xDist = (point.x - self.x)
        let yDist = (point.y - self.y)
        return sqrt((xDist * xDist) + (yDist * yDist))
    }
}
