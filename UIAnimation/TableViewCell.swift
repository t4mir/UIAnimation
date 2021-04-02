//
//  TableViewCell.swift
//  UIAnimation
//
//  Created by Тамирлан Абаев   on 01.04.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleText: UILabel!
    
    @IBOutlet weak var subTitleText: UILabel!
    
    @IBOutlet weak var processorText: UILabel!
    
    @IBOutlet weak var cameraText: UILabel!
    
    @IBOutlet weak var hideOutlet: UIButton!
    {
        didSet {
            hideOutlet.layer.cornerRadius = 10
            hideOutlet.layer.borderWidth = 1.0
            hideOutlet.layer.borderColor = UIColor.white.cgColor
            hideOutlet.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var firstView: TableViewCell!

    @IBOutlet weak var secondView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        secondView?.isHidden = true
    }
    @IBAction func infoButton(_ sender: UIButton) {
        let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: secondView, duration: 0.7, options: transitionOptions, animations: {
            self.secondView.isHidden = false
        })
        UIView.transition(with: contentView, duration: 0.7, options: transitionOptions, animations: nil)
    }
    
   
    @IBAction func hideButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) {
            self.secondView.alpha = 0
            self.secondView.layer.transform = CATransform3DTranslate(CATransform3DIdentity, self.secondView.frame.width, 0, 0)
        } completion: { _ in
            self.secondView.isHidden = true
            self.secondView.layer.transform = CATransform3DIdentity
            self.secondView.alpha = 1
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
