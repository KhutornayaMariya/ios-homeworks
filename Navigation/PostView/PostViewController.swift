//
//  PostViewController.swift
//  Navigation
//
//  Created by Mariia Khutornaia on 24.10.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    var post: Post
    var backgroundColor: UIColor = .white
    
    init(_ color:UIColor, _ post:Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
        backgroundColor = color
        let infoButtonItem = UIBarButtonItem(
                    image: UIImage(systemName: "info"),
                    style: UIBarButtonItem.Style.plain,
                    target: self,
                    action: #selector(openInfoButtomShit)
                )
        navigationItem.rightBarButtonItem = infoButtonItem
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = backgroundColor
        self.title = post.title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc
    func openInfoButtomShit() {
        present(InfoViewController(.lightGray), animated: true, completion: nil)
    }
}
