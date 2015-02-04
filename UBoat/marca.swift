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
        
        imagenPeriscopio()
        pintado()
        
    }
    
    func imagenPeriscopio() {
        
        fondo = SKSpriteNode(imageNamed: "periscopio")
        fondo.position = CGPoint(x: size.width / 2 , y: size.height / 2)
        fondo.size = self.size
        addChild(fondo)
        
    }
    func pintado (){
        
        var score : Juego!
        let label = SKLabelNode( fontNamed: "Avenir")
        label.fontColor = UIColor.blackColor()
     // label.text = "\(score.contadorImpactosLabel)"
        label.text = "Puntuanciones del Juego"
        label.fontSize = 20
        label.position = CGPoint(x: size.width / 2 - 100, y: size.height - 50)
        label.name = "Cambiar"
        label.zPosition = 1
        addChild(label)
    }
    
    
    
}