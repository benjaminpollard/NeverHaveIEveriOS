//
//  NeverHaveIEverCardView.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 07/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import UIKit

class NeverHaveIEverCardView : UIView {
        
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var contentView: CardView!
    @IBOutlet weak var nextButton: ActionButton!
    var model : NeverHaveIEverModel!
    {
        didSet{
            self.infoLabel.text = model.info;
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    let kCONTENT_XIB_NAME = "NeverHaveIEverCardView"

    func commonInit() {
        //Bundle.main.loadNibNamed("NeverHaveIEverCardView", owner: self, options: nil)
        let bundle = Bundle(for: type(of: self))
             let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)

             let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
             
             addSubview(view)
        
        contentView.fixInView(self)
        
    }
    
   

}

extension UIView{
    
    func fixInView(_ container: UIView!) -> Void{
        
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
}

extension NSObject {
    
    class var className: String {
        return String(describing: self)
}
}
    
