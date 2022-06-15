//
//  SearchViewController.swift
//  ScrollViewProject
//
//  Created by user on 20.05.2022.
//

import UIKit

class SearchViewController: UIViewController {
    
    var searchLabel = UILabel()
    var searchTextField = UITextField()
    let recentlyWatchedLabel = UILabel()
    let clearButton = UIButton()
//    let myscrollView = UIScrollView()
//    let contentView = UIView()
//    let productView = UIView()
    @IBOutlet weak var macImageView: UIImageView!
    @IBOutlet weak var ipadImageView: UIImageView!
    @IBOutlet weak var watchImageView: UIImageView!
    @IBOutlet weak var descriptionMacTextview: UITextView!
    @IBOutlet weak var descriptionIpadTextView: UITextView!
    @IBOutlet weak var descriptionWatchTextView: UITextView!
    let requestVariantsLabel = UILabel()
    let variantOneTextField = UITextField()
    let variantTwoTextField = UITextField()
    let variantThreeTextField = UITextField()
    let variantFourTextField = UITextField()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        //Change color icon tabbar
        tabBarController?.tabBar.barTintColor = .darkGray
        tabBarController?.tabBar.tintColor = .gray
        
        createSearchLabel()
        createSearchTextField()
        createRecentlyWatchedLabel()
        createClearButton()
        createMacImage()
        createIpadImage()
        createWatchImage()
        createMacText()
        createIpadText()
        createWatchText()
        createRequestVariantsLabel()
        createVariantOneTextField()
        createVariantTwoTextField()
        createVariantThreeTextField()
        createVariantFourTextField()
        
        
        let gestureRecognizerMac = UITapGestureRecognizer(target: self, action: #selector(toProductController(sender:)))
        macImageView.addGestureRecognizer(gestureRecognizerMac)
        macImageView.isUserInteractionEnabled = true
        
        let gestureRecognizerIpad = UITapGestureRecognizer(target: self, action: #selector(toProductControllerTwo(sender:)))
        ipadImageView.addGestureRecognizer(gestureRecognizerIpad)
        ipadImageView.isUserInteractionEnabled = true
        
        let gestureRecognizerWatch = UITapGestureRecognizer(target: self, action: #selector(toProductControllerThree(sender:)))
        watchImageView.addGestureRecognizer(gestureRecognizerWatch)
        watchImageView.isUserInteractionEnabled = true
        
        
        
//        createScrollView()
//        createProductView()
//        createMacView()
        
        
    }
    
    @objc func toProductController(sender: UITapGestureRecognizer) {
        let secondImage = UIImageView(image: UIImage(named: "MacSecond"))
        let secondText = UITextView()
        secondText.text = "It’s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac — it’s another level entirely."
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let destination = storyboard.instantiateViewController(withIdentifier: "DescriptionProductViewController") as? DescriptionProductViewController else {return}
        destination.imageSelect = secondImage.image ?? UIImage()
        destination.textSelect = secondText.text
        navigationController?.show(destination, sender: nil)
    }
    
    @objc func toProductControllerTwo(sender: UITapGestureRecognizer) {
        let secondImage = UIImageView(image: UIImage(named: "Ipad2"))
        let secondText = UITextView()
        secondText.text = "Extreme dynamic range comes to the 12.9-inch iPad Pro.2 The Liquid Retina XDR display delivers true-to-life detail with a 1,000,000:1 contrast ratio, great for viewing and editing HDR photos and videos or enjoying your favorite movies and TV shows. It also features a breathtaking 1000 nits of full‑screen brightness and 1600 nits of peak brightness."
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let destination = storyboard.instantiateViewController(withIdentifier: "DescriptionProductViewController") as? DescriptionProductViewController else {return}
        destination.imageSelect = secondImage.image ?? UIImage()
        destination.textSelect = secondText.text
        navigationController?.show(destination, sender: nil)
    }
    
    @objc func toProductControllerThree(sender: UITapGestureRecognizer) {
        let secondImage = UIImageView(image: UIImage(named: "Watch2"))
        let secondText = UITextView()
        secondText.text = "The larger display enhances the entire experience, making Apple Watch easier to use and read. Series 7 represents our biggest and brightest thinking."
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let destination = storyboard.instantiateViewController(withIdentifier: "DescriptionProductViewController") as? DescriptionProductViewController else {return}
        destination.imageSelect = secondImage.image ?? UIImage()
        destination.textSelect = secondText.text
        navigationController?.present(destination, animated: true, completion: nil)
    }
    
    
    
        
    
    func createSearchLabel() {
        searchLabel = UILabel(frame: CGRect(x: 50, y: 80, width: 100, height: 30))
        searchLabel.textColor = .white
        searchLabel.text = "Search"
        searchLabel.contentMode = .scaleAspectFit
        searchLabel.textAlignment = .left
        searchLabel.font = searchLabel.font.withSize(30)
        
        view.addSubview(searchLabel)
    }
    
    func createSearchTextField() {
        let textFieldFrame = CGRect(x: 50, y: 140, width: 300, height: 31)
        searchTextField = UITextField(frame: textFieldFrame)
        searchTextField.placeholder = "Search by products and shops"
        searchTextField.textColor = .black
        searchTextField.backgroundColor = .white
        searchTextField.layer.cornerRadius = 5
        
        //Create image in TextField
        let imageTextView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let imageText = UIImage(named: "glass")
        imageTextView.image = imageText
        searchTextField.leftViewMode = .always
        searchTextField.leftView = imageTextView
        
        view.addSubview(searchTextField)
        
    }
    
    func createRecentlyWatchedLabel() {
        recentlyWatchedLabel .frame = CGRect(x: 50, y: 230, width: 250, height: 40)
        recentlyWatchedLabel.text = "Recently watched"
        recentlyWatchedLabel.textColor = .white
        recentlyWatchedLabel.font = .boldSystemFont(ofSize: 25)
        
        view.addSubview(recentlyWatchedLabel)
    }
    
    func createClearButton() {
        clearButton.frame = CGRect(x: 300, y: 240, width: 50, height: 30)
        clearButton.setTitle("Clear", for: .normal)
        clearButton.setTitleColor(.blue, for: .normal)
        
        view.addSubview(clearButton)
    }
//MARK - Create images
    func createMacImage() {
        let macImage = UIImage(named: "Mac")
        macImageView.image = macImage
    }
    func createIpadImage() {
        let ipadImage = UIImage(named: "Ipad")
        ipadImageView.image = ipadImage
    }
    func createWatchImage() {
        let watchImage = UIImage(named: "Watch")
        watchImageView.image = watchImage
    }

    // MARK - Create descriptions
    
    func createMacText() {
        descriptionMacTextview.text = "MacBook Air From $999 or $83.25/mo. per month for 12 months"
        descriptionMacTextview.textColor = .white
        descriptionMacTextview.backgroundColor = .gray
        descriptionMacTextview.textContainer.maximumNumberOfLines = 3
    }
    func createIpadText() {
        descriptionIpadTextView.text = "iPad Pro 11-inch From $799 or $66.58/mo. per month for 12 months"
        descriptionIpadTextView.textColor = .white
        descriptionIpadTextView.backgroundColor = .gray
        descriptionIpadTextView.textContainer.maximumNumberOfLines = 3
    }
    func createWatchText() {
        descriptionWatchTextView.text = "Apple Watch Series 7 From $399 or $16.62/mo. per month  for 24 months"
        descriptionWatchTextView.textColor = .white
        descriptionWatchTextView.backgroundColor = .gray
        descriptionWatchTextView.textContainer.maximumNumberOfLines = 3
    }
    
    
    func createRequestVariantsLabel() {
        requestVariantsLabel.frame = CGRect(x: 50, y: 560, width: 200, height: 40)
        requestVariantsLabel.textColor = .white
        requestVariantsLabel.text = "Request Variants"
        requestVariantsLabel.font = .boldSystemFont(ofSize: 25)
        
        view.addSubview(requestVariantsLabel)
    }
    
    func createVariantOneTextField() {
        variantOneTextField.frame = CGRect(x: 50, y: 610, width: 300, height: 31)
        variantOneTextField.textColor = .white
        variantOneTextField.text = "AirPods"
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: variantOneTextField.frame.height - 1, width: variantOneTextField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        variantOneTextField.borderStyle = .none
        variantOneTextField.layer.addSublayer(bottomLine)
        
        
        let imageTextView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let imageText = UIImage(systemName: "magnifyingglass")
        imageTextView.image = imageText
        variantOneTextField.leftViewMode = .always
        variantOneTextField.leftView = imageTextView
        
        view.addSubview(variantOneTextField)
    }
    
    func createVariantTwoTextField() {
        variantTwoTextField.frame = CGRect(x: 50, y: 650, width: 300, height: 31)
        variantTwoTextField.textColor = .white
        variantTwoTextField.text = "AppleCare"
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: variantTwoTextField.frame.height - 1, width: variantTwoTextField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        variantTwoTextField.borderStyle = .none
        variantTwoTextField.layer.addSublayer(bottomLine)
        
        
        let imageTextView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let imageText = UIImage(systemName: "magnifyingglass")
        imageTextView.image = imageText
        variantTwoTextField.leftViewMode = .always
        variantTwoTextField.leftView = imageTextView
        
        view.addSubview(variantTwoTextField)
    }
    
    func createVariantThreeTextField() {
        variantThreeTextField.frame = CGRect(x: 50, y: 690, width: 300, height: 31)
        variantThreeTextField.textColor = .white
        variantThreeTextField.text = "Beats"
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: variantThreeTextField.frame.height - 1, width: variantThreeTextField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        variantThreeTextField.borderStyle = .none
        variantThreeTextField.layer.addSublayer(bottomLine)
        
        
        let imageTextView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let imageText = UIImage(systemName: "magnifyingglass")
        imageTextView.image = imageText
        variantThreeTextField.leftViewMode = .always
        variantThreeTextField.leftView = imageTextView
        
        view.addSubview(variantThreeTextField)
    }
    func createVariantFourTextField() {
        variantFourTextField.frame = CGRect(x: 50, y: 730, width: 300, height: 31)
        variantFourTextField.textColor = .white
        variantFourTextField.text = "Compare all Iphone models"
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: variantFourTextField.frame.height - 1, width: variantFourTextField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        variantFourTextField.borderStyle = .none
        variantFourTextField.layer.addSublayer(bottomLine)
        
        
        let imageTextView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let imageText = UIImage(systemName: "magnifyingglass")
        imageTextView.image = imageText
        variantFourTextField.leftViewMode = .always
        variantFourTextField.leftView = imageTextView
        
        view.addSubview(variantFourTextField)
    }
    
    
//    func createScrollView() {
//        myscrollView.frame = CGRect(x: 50, y: 274, width: 394, height: 267)
//        myscrollView.contentSize = CGSize(width: 700, height: 267)
//        contentView.backgroundColor = .gray
//        contentView.frame = CGRect(x: 0, y: 0, width: Int(myscrollView.contentSize.width), height: Int(myscrollView.contentSize.height))
//        myscrollView.addSubview(contentView)
//        view.addSubview(myscrollView)
//    }
//
//
//    func createProductView() {
//        let productImage = UIImage(named: "Ipad")
//        let productImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        productImageView.image = productImage
//
//        let productText = UITextView(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
//        productText.text = "byvtjcv djtrdrhd hdreys"
//        productText.textColor = .white
//        productText.backgroundColor = .black
//
//        myscrollView.addSubview(productImageView)
//        myscrollView.addSubview(productText)
//
//
//
//    }
    
    
   

}
