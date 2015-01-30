//
//  puntuaciones.swift
//  UBoat
//
//  Created by jorge on 27/01/15.
//  Copyright (c) 2015 Nicanor Burcio Vecino. All rights reserved.
//

import SpriteKit


class marca : Juego  {
    
   
    
    override func didMoveToView(view: SKView) {
        
        pintado()
        
    }
    
    func pintado (){
    var score : Juego!
        
        
    

    let label = SKLabelNode( fontNamed: "Avenir")
  //      label.text = "\(score.contadorImpactosLabel)"
    label.text = "jpña"
    label.fontSize = 30
    label.position = CGPoint(x: size.width / 2 - 50, y: size.height / 2)
    label.name = "Cambiar"
    label.zPosition = 25
    addChild(label)
    }
    
    
    
}