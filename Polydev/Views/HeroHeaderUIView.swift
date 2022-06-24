//
//  HeroHeaderUIView.swift
//  Polydev
//
//  Created by Jafar on 23.06.2022.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let heroImageVeiw: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        
        return imageView
        
    }()
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageVeiw)
        addGradient()
    }
    
    public func configure(with model: TitleViewModel) {
        
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterURL)") else {
            return
        }
        
        heroImageVeiw.sd_setImage(with: url, completed: nil)
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageVeiw.frame = bounds
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
