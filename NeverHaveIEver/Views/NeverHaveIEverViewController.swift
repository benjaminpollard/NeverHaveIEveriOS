//
//  NeverHaveIEverViewController.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 06/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import SideMenu
import UIKit
import MDPersistence
class NeverHaveIEverViewController : UIViewController , TinderSwipeViewDelegate {
    
    var controller : NeverHaveIEverCardController!;
    
    let userModels : [NeverHaveIEverModel] =  {
           var model : [NeverHaveIEverModel] = []
           for n in 1...30 {
            var m = NeverHaveIEverModel();
            m.info = "sfd" + n.description;
               model.append(m)
           }
           return model
       }()
    
    
    @IBOutlet weak var reloadCard: CardView!
    
    public var SectionType = "";
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
   
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var menuIcon: UIButton!
    
    private var swipeView: TinderSwipeView<NeverHaveIEverModel>!{
           didSet{
            self.swipeView.delegate = self
           }
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuIcon.imageView?.tintColor = UIColor.white
        menuIcon.tintColor =  UIColor.white
       
        controller = NeverHaveIEverCardController(database: PersistenceService(migrationHelperProtocol: PersistenceMigrationService()), neverHaveIEverApiService: NeverHaveIEverApiService(), analytics: AnalyticsService())
        
        let menu = SideMenuNavigationController(rootViewController: self)
        menu.presentationStyle.backgroundColor = .clear
        
        let contentView: (Int, CGRect, NeverHaveIEverModel) -> (UIView) = { (index: Int ,frame: CGRect , userModel: NeverHaveIEverModel) -> (UIView) in
                   
                       let customView = NeverHaveIEverCardView(frame: frame)
                        customView.model = userModel
                    customView.nextButton.addTarget(self, action: #selector(self.customViewButtonSelected), for: UIControl.Event.touchUpInside)
                       return customView
               }
                       
          swipeView = TinderSwipeView<NeverHaveIEverModel>(frame: containerView.bounds, contentView: contentView)
          containerView.addSubview(swipeView)
          swipeView.showTinderCards(with: userModels ,isDummyShow: true)
        
        reloadCard.isHidden = true;
        
    }
    
    @objc func customViewButtonSelected(button:UIButton){
        swipeView.makeRightSwipeAction()
    }
    func dummyAnimationDone() {
        
    }
    
    func currentCardStatus(card: Any, distance: CGFloat) {
        
    }
    
    func fallbackCard(model: Any) {
        
    }
    
    func didSelectCard(model: Any) {
        
    }
    
    func cardGoesLeft(model: Any) {
        controller.OnCardVotedBad(id: (model as! NeverHaveIEverModel).id)
    }
    
    func cardGoesRight(model: Any) {
        
    }
    
    func undoCardsDone(model: Any) {
        
    }
    
    func endOfCardsReached() {
        reloadCard.isHidden = false;
    }

    @IBAction func reloadCards(_ sender: Any) {
        reloadCard.isHidden = true;
        swipeView.showTinderCards(with: userModels ,isDummyShow: true)
    }
}

