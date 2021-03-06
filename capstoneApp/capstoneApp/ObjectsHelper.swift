//
//  ObjectsHelper.swift
//  capstoneApp
//
//  Created by Ana Merfu on 2017-12-10.
//  Copyright © 2017 Ana Merfu & Laura Douglas. All rights reserved.
//

import UIKit
import SceneKit

class ObjectsHelper {
    
    class func randomPosition(lowerBound lower:Float, upperBound upper:Float) -> Float {
        return Float(arc4random()) / Float(UInt32.max) * (lower - upper) + upper
    }

    class func addObject(sceneView: SCNView, item:String){
        
        let object = Object()
        
        object.loadModel(object: item)
        
        let xPos = randomPosition(lowerBound: -3, upperBound: 8)
        let yPos = randomPosition(lowerBound: -3, upperBound: 0.5)
        let zPos = randomPosition(lowerBound: -5, upperBound: 2)
        
        object.position = SCNVector3(xPos, yPos, zPos)
        
        sceneView.scene?.rootNode.addChildNode(object)
    }
    
}
