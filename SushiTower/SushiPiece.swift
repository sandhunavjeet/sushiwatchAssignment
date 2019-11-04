//
//  SushiPiece.swift
//  SushiTower
//
//  Created by Parrot on 2019-02-17.
//  Copyright © 2019 Parrot. All rights reserved.
//

import Foundation
import SpriteKit

// A custom SpriteNode class.
// Used to represent number of piece of sushi in the tower.
class SushiPiece: SKSpriteNode {
    
    // MARK: Variables
    // --------------------------------
    var sGraphic:SKSpriteNode!
    var sPosition:String = ""

    // MARK: Constructor - required nonsense
    // --------------------------------
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
        // @TODO Fix this so its alawys the same picture
        //self.texture = SKTexture(imageNamed: "roll");
        
        // 1. setup our chopstick images
        self.sGraphic = SKSpriteNode(imageNamed: "chopstick")
        // 2. set the position of stick
        // -------------------------
        // randomly generate the position of the stick
        let pos = Int.random(in: 0...2)
        if (pos == 0) {
            self.sPosition = ""
            
            // no need to show the stick on the screen
        }
        else if (pos == 1) {
            self.sPosition = "right"
            
            // right
            self.sGraphic.position.x = self.position.x + 100
            self.sGraphic.position.y = self.position.y - 10
            
            // flip the image
            let facingRight = SKAction.scaleX(to: -1, duration: 0)
            self.sGraphic.run(facingRight)
            
            // -------------------------
            // 3. show the stick on the screen
            addChild(self.sGraphic)
        }
        else if (pos == 2) {
            self.sPosition = "left"
            
            // left
            self.sGraphic.position.x = self.position.x - 100
            self.sGraphic.position.y = self.position.y - 10
            
            // -------------------------
            // 3. show the stick on the screen
            addChild(self.sGraphic)
        }
        
        
       
    }
    
    // Required nonsense
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not working ")
    }
    
    // Mark:  Functions
    // --------------------------------
}
