//
//  Segue.swift
//  UIAnimation
//
//  Created by Тамирлан Абаев   on 31.03.2021.
//

import UIKit

class Segue: UIStoryboardSegue {
    
    override func perform() {
        
        let destination_view = self.destination.view
        let source_view = self.source.view
        
        
    
        
        UIView.animate(withDuration: 0.4) {
            source_view?.alpha = 0
            
        } completion: { _ in
            destination_view?.alpha = 0
            
            self.source.present(self.destination, animated: false) {
                
                destination_view?.transform = CGAffineTransform(scaleX: 0.1, y: 0.3)
                UIView.animate(withDuration:1) {
                    destination_view?.alpha = 1
                    destination_view?.transform = CGAffineTransform(scaleX: 1, y: 1)
                    
                }
            }
        }

        
    }
}
