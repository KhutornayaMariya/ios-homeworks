//
//  InfoViewController.swift
//  Navigation
//
//  Created by Mariia Khutornaia on 24.10.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    var backgroundColor: UIColor = .white
    var alert: UIAlertController = {
        let positiveText = "I'am OK"
        let negativeText = "Not so good"
        
        let alert = UIAlertController(title: "How are you today?", message: "Tracker of your mood", preferredStyle: .alert)
        let positive = UIAlertAction(title: positiveText, style: .default) {
            UIAlertAction in
            print(positiveText)
        }
        alert.addAction(positive)
        
        let negative = UIAlertAction(title: negativeText, style: .default) {
            UIAlertAction in
            print(negativeText)
        }
        alert.addAction(negative)
       
        return alert
    }()
    
    init(_ color:UIColor) {
        super.init(nibName: nil, bundle: nil)
        backgroundColor = color
    }
    
    override func loadView() {
        let view = InfoView()
        self.view = view
        view.button.addTarget(self, action: #selector(openAlert), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func openAlert() {
        present(alert, animated: true, completion: nil)
    }
}
