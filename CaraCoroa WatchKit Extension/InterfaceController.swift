//
//  InterfaceController.swift
//  CaraCoroa WatchKit Extension
//
//  Created by Eduarda Mello on 03/08/19.
//  Copyright © 2019 Eduarda Mello. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var imgCaraCoroa: WKInterfaceImage!
    
    @IBAction func buttonSortear() {
        
        let imgCara : UIImage = UIImage(named: "moeda-cara")!
        let imgCoroa : UIImage = UIImage(named: "moeda-coroa")!
        
        let numeroAleatorio = arc4random_uniform(2)
        
        if(numeroAleatorio == 0){
            imgCaraCoroa.setImage(imgCara)
        }else{
            imgCaraCoroa.setImage(imgCoroa)
        }
        
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
