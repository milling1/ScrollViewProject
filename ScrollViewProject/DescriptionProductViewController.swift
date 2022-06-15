//
//  DescriptionProductViewController.swift
//  ScrollViewProject
//
//  Created by user on 24.05.2022.
//

import UIKit


class DescriptionProductViewController: UIViewController {
    
    let selectImage = UIImageView()
    let selectTextView = UITextView()
    
    var imageSelect = UIImage()
    var textSelect:String = ""
    
    var numberOfLike = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackButtom()
        createButtomRight()
        
        
        
        selectImage.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        selectImage.backgroundColor = .green
        selectTextView.frame = CGRect(x: 100, y: 300, width: 200, height: 300)
        view.backgroundColor = .white
        
        selectImage.image = imageSelect
        selectTextView.text = textSelect
        selectImage.isUserInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(toWeb(sender:)))
        selectImage.addGestureRecognizer(gesture)
        selectImage.isUserInteractionEnabled = true
        
        
        view.addSubview(selectImage)
        view.addSubview(selectTextView)

    }
    
//MARK - Change backButtomItem
    
    func changeBackButtom() {
        let buttom = UIBarButtonItem()
        buttom.title = "Search"
        navigationController?.navigationBar.topItem?.backBarButtonItem = buttom
        
    }
    
    func createButtomRight() {
        let buttom1 = UIBarButtonItem(image: UIImage(systemName: "heart"), style: .plain, target: self, action: #selector(likesNumber(sender:)))
        let buttom2 = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItems = [buttom1, buttom2]
    }
    
    //MARK - Selector
    
    @objc func likesNumber(sender: UIBarButtonItem) {
        numberOfLike += 1
        print(numberOfLike)
    }
    
    @objc func toWeb(sender: UITapGestureRecognizer) {
        let destination = WebViewController()
        navigationController?.pushViewController(destination, animated: false)
        
    }
    
    
    
    
    

}
