//
//  GameScene.swift
//  BlockyProgramming
//
//  Created by Julio Brazil on 14/12/17.
//  Copyright © 2017 Julio Brazil. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    private var touchedNode: SKNode?
    private let snapDistance: CGFloat = CGFloat(60)
    private var snapPoint: CGPoint = CGPoint.zero
    
    override func didMove(to view: SKView) {
        
        let circle3 = SKShapeNode(circleOfRadius: CGFloat(120))
        circle3.fillColor = UIColor.gray
        circle3.strokeColor = UIColor.clear
        circle3.name = "circle3"
        self.addChild(circle3)
        self.snapPoint = circle3.position
        
        let circle1 = SKShapeNode(circleOfRadius: CGFloat(100))
        circle1.fillColor = UIColor.blue
        circle1.strokeColor = UIColor.clear
        circle3.isUserInteractionEnabled = true
        circle1.name = "circle1"
        self.addChild(circle1)
        
        let circle2 = SKShapeNode(circleOfRadius: CGFloat(90))
        circle2.fillColor = UIColor.red
        circle2.strokeColor = UIColor.clear
        circle3.isUserInteractionEnabled = true
        circle2.name = "circle2"
        self.addChild(circle2)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let touchedNode = nodes(at: pos).first {
            self.touchedNode = touchedNode
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let touchedNode = self.touchedNode {
            touchedNode.position = pos
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let touchedNode = self.touchedNode {
            if touchedNode.position.distanceFrom(self.snapPoint) <= self.snapDistance {
                //snap
                touchedNode.position = self.snapPoint
            }
            
            self.touchedNode = nil
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
