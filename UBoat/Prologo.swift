//
//  prologo.swift
//  UBoat
//
//  Created by jorge on 27/01/15.
//  Copyright (c) 2015 Nicanor Burcio Vecino. All rights reserved.
//

import SpriteKit



class Prologo: SKScene, SKPhysicsContactDelegate {
    
    var fondo = SKSpriteNode()
    let prologo = "Alerta Alerta nos quedamos sin oxigeno.\n Emergemos en zona hostil,preparados para el enfrentamiento."
    
    override func didMoveToView(view: SKView) {
        
        imagenPeriscopio()
       
    /*    if   enemigo=1
        {
        }
      */
        llamada()
        
        
    }
    
    func imagenPeriscopio() {
        
        fondo = SKSpriteNode(imageNamed: "periscopio")
        fondo.position = CGPoint(x: size.width / 2 , y: size.height / 2)
        fondo.size = self.size
        addChild(fondo)
        
    }

    func llamada() {
        
     /*   let UITextView = SKLabelNode(fontNamed: "Avenir")
       
        UITextView.text = prologo
        UITextView.fontColor = UIColor.blackColor()
        
        UITextView.fontSize = 25
        UITextView.position = CGPoint(x: size.width / 2 - 50, y: size.height / 2)
        UITextView.name = "caja_prologo"
        addChild(UITextView)
       */
       /* enum SKLabelVerticalAlignmentMode : Int {
            case Baseline
            case Center
            case Top
            case Bottom
        }
        */
        enum  SKLabelHorizontalAlignmentMode : Int {
            case Center
            case Left
            case Right
        
        }
        let label = SKLabelNode(fontNamed: "Avenir")
        label.text = prologo
        label.fontColor = UIColor.blackColor()
        label.fontSize = 30
        label.
        
   /*     var formatotexto : SKLabelVerticalAlignmentMode
        enum formatotexto : Int {
            case center}
        
        }
     */   //label(NSTextAlignment  JustificationFlags
    
        label.position = CGPoint(x: size.width / 2 - 50, y: size.height / 2)
        label.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame) )
        
       // label.position = CGPointMake(120, self.frame.height - 25)
        label.name = "prologo"
        
      
        addChild(label)
      //  Juego.escena volverMenu()
 
            
        //llamamos ejecutamos la secuencia para que cambie solo a la pantalla de juego
        runAction(SKAction.sequence([
            SKAction.waitForDuration(4.0),
            SKAction.runBlock() {
                
                let aparecer = SKTransition.flipHorizontalWithDuration(1)
                let pantalla = Juego(size: self.size)
                self.view?.presentScene(pantalla, transition: aparecer)
            }
            
            ]))

      //  var moveLabel = SKAction.self; moveByX;: 0 y: 30 duration: 2
        //SKAction * moveLabel = SKAction (moveByX:0.0, y: 30.0, duration: 1,2))
        
        //label runAction : moveLabel
        
        
        
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        let tocarLabel: AnyObject = touches.anyObject()!
        
        let posicionTocar = tocarLabel.locationInNode(self)
        
        let loQueTocamos = self.nodeAtPoint(posicionTocar)
        
        if loQueTocamos.name == "Cambiar"  {
            
            let transicion = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 0.5)
            
            let  aparecerEscena = Prologo (size: self.size)
            
            aparecerEscena.scaleMode = SKSceneScaleMode.AspectFill
            
            self.scene?.view?.presentScene(aparecerEscena, transition: transicion)
        }
        
    }

    


}