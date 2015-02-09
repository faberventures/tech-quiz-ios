//
//  DashboardHeaderTableViewCell.swift
//  TechQuiz
//
//  Created by Pedro Ivo B Gimenes on 27/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import UIKit
import Snap

class DashboardHeaderView: UIView {

    struct Constants {
        static let height: CGFloat = 240.0
    }
    
    var logoImageView: UIImageView
    
    override init(frame: CGRect) {
        logoImageView = UIImageView(frame: frame)
        super.init(frame: frame)
        setupLogoImageView()
    }
    
    private func setupLogoImageView()
    {
        addSubview(logoImageView)
        logoImageView.image = UIImage(named: "faberlogo")
        logoImageView.contentMode = .ScaleAspectFit
        logoImageView.autoresizingMask = .FlexibleWidth
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
