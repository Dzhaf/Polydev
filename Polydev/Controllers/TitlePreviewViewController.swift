//
//  TitlePreviewViewController.swift
//  Polydev
//
//  Created by Jafar on 24.06.2022.
//

import UIKit

class TitlePreviewViewController: UIViewController {
    

    
    private let titleLabel: UILabel = {
       
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    private let overviewLabel: UILabel = {
       
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private let releaseDateLabel: UILabel = {
       
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private let voteAverageLabel: UILabel = {
       
        let label = UILabel()
        label.font = .systemFont(ofSize: 38, weight: .bold)
        label.textColor = .systemGreen
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    
    
    private let downloadButton: UIView = {
       
        let button = UIView()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
       
        button.layer.cornerRadius = 45
        button.layer.masksToBounds = true
        
        return button
    }()
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(titleLabel)
        view.addSubview(overviewLabel)
        view.addSubview(releaseDateLabel)
        downloadButton.addSubview(voteAverageLabel)
        view.addSubview(downloadButton)
        
        
        configureConstraints()
        
        
        
        
    }
    
    
    

    
    func configureConstraints() {
        
        let titleLabelConstraints = [
            
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ]
        
        let overviewLabelConstraints = [
            overviewLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            overviewLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            overviewLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
        ]
        
        let releaseDateLabelConstraints = [
            releaseDateLabel.topAnchor.constraint(equalTo: overviewLabel.bottomAnchor, constant: 100),
            releaseDateLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            releaseDateLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
        ]
        
        let voteAverageLabelConstraints = [
            voteAverageLabel.centerYAnchor.constraint(equalTo: downloadButton.centerYAnchor),
            voteAverageLabel.centerXAnchor.constraint(equalTo: downloadButton.centerXAnchor),
            

        ]
        
        
        let voteAverageView = [
            downloadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            downloadButton.topAnchor.constraint(equalTo: releaseDateLabel.bottomAnchor, constant: 25),
            downloadButton.widthAnchor.constraint(equalToConstant: 100),
            downloadButton.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        
        
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(overviewLabelConstraints)
        NSLayoutConstraint.activate(releaseDateLabelConstraints)
        NSLayoutConstraint.activate(voteAverageLabelConstraints)
        NSLayoutConstraint.activate(voteAverageView)
        
    }
    
    
    public func configure(with model: TitlePreviewViewModel) {
        titleLabel.text = model.title
        titleLabel.textAlignment = .center
        overviewLabel.text = model.titleOverview
        overviewLabel.adjustsFontSizeToFitWidth = true
        releaseDateLabel.text = "Release date: \(model.releaseDate)"
        releaseDateLabel.textAlignment = .center
        
        voteAverageLabel.text = "\(model.voteAverage)"
        voteAverageLabel.textAlignment = .center
        
    }

}
