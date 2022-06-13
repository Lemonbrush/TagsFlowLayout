//
//  ViewController.swift
//  TagsFlowLayout
//
//  Created by Alexander Rubtsov on 13.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private properties
    
    private var testModels = [Tag(name: "All"),
                              Tag(name: "New to you"),
                              Tag(name: "Gaming"),
                              Tag(name: "History"),
                              Tag(name: "Homer Simpson"),
                              Tag(name: "Sitcoms"),
                              Tag(name: "Swift"),
                              Tag(name: "Music"),
                              Tag(name: "Super long tags related compilation videos"),
                              Tag(name: "Interesting"),
                              Tag(name: "Must have"),
                              Tag(name: "Other"),
                              Tag(name: "Apple"),
                              Tag(name: "Mixes"),
                              Tag(name: "Computer programming"),
                              Tag(name: "Anime"),
                              Tag(name: "Cooking shows"),
                              Tag(name: "Drawing"),
                              Tag(name: "Watched")]
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 50
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let tagsView1Line: TagsCollectionView = {
        let collectionView = TagsCollectionView()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()

    private let tagsView2Lines: TagsCollectionView = {
        let collectionView = TagsCollectionView()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    private let tagsView3Lines: TagsCollectionView = {
        let collectionView = TagsCollectionView()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    private let tagsView4Lines: TagsCollectionView = {
        let collectionView = TagsCollectionView()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        stackView.addArrangedSubview(tagsView1Line)
        stackView.addArrangedSubview(tagsView2Lines)
        stackView.addArrangedSubview(tagsView3Lines)
        stackView.addArrangedSubview(tagsView4Lines)
        
        tagsView1Line.heightAnchor.constraint(equalToConstant: 43).isActive = true
        tagsView2Lines.heightAnchor.constraint(equalToConstant: 86).isActive = true
        tagsView3Lines.heightAnchor.constraint(equalToConstant: 129).isActive = true
        tagsView4Lines.heightAnchor.constraint(equalToConstant: 172).isActive = true

        tagsView1Line.tags = testModels
        tagsView2Lines.tags = testModels
        tagsView3Lines.tags = testModels
        tagsView4Lines.tags = testModels
    }
}

