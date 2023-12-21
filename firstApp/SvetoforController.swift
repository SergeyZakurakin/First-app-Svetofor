//
//  ViewController.swift
//  firstApp
//
//  Created by Sergey Zakurakin on 14/12/2023.
//

import UIKit
import SnapKit

class SvetoforController: UIViewController {
    
  
    let svetoforView = SvetoforView()

    
    
    @IBOutlet weak var TurnOffButton: UIButton!
    
    
    
    
    // MARK: - System functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemTeal
        
        view.addSubview(svetoforView)
        
        svetoforView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalTo(80)
            make.centerX.equalToSuperview()
        }
        
//        view.addSubview(firstSectionView)
//        view.addSubview(secondSectionView)
//        view.addSubview(thirdSectionView)
        
  
        
//        firstSectionView.colorLight = .systemRed
//        secondSectionView.colorLight = .systemOrange
//        thirdSectionView.colorLight = .systemGreen
        
        
        
        //        configure(view: firstSectionView)
        //        configure(view: secondSectionView)
        //        configure(view: thirdSectionView)
        //        configure(view: blueView)
        
        
        //НАСТОЙКИ СНЕПКИТ
        //        view.addSubview(blueView)
        //        blueView.backgroundColor = .systemBlue
        //        blueView.snp.makeConstraints { make in
        //            make.height.equalTo(100)
        //            make.width.equalTo(100)
        //            make.centerX.equalToSuperview()
        //            make.top.equalTo(greenView.snp.bottom).offset(44)
        //        }
        
        
        // ЗАМЕНИЛИ ФУНКЦИЕЙ
        //        redView.layer.cornerRadius = 100
        //        redView.layer.borderWidth = 2
        //        redView.layer.borderColor = UIColor.black.cgColor
        //        redView.backgroundColor = .clear
        //
        //        orangeView.layer.cornerRadius = 100
        //        orangeView.layer.borderWidth = 2
        //        orangeView.layer.borderColor = UIColor.black.cgColor
        //        orangeView.backgroundColor = .clear
        //
        //        greenView.layer.cornerRadius = 100
        //        greenView.layer.borderWidth = 2
        //        greenView.layer.borderColor = UIColor.black.cgColor
        //        greenView.backgroundColor = .clear
        
        
        
        
        
        // Do any additional setup after loading the view.
        //        printMytext()
        
        
        
    }
    
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    //
    //    }
    //
    //
    //
    //    override func viewDidAppear(_ animated: Bool) {
    //        super.viewDidAppear(animated)
    //    }
    //
    //
    //    override func viewWillDisappear(_ animated: Bool) {
    //        super.viewWillDisappear(animated)
    //    }
    //
    //
    //    override func viewDidDisappear(_ animated: Bool) {
    //        super.viewDidDisappear(animated)
    //    }
    //
    
    
    //    func printMytext() {
    //        print("printText")
    //    }
    
    // MARK: - User Functions
    
    //   func configure(view: UIView) {
    //        view.layer.cornerRadius = 50
    //    view.layer.borderWidth = 2
    //    view.layer.borderColor = UIColor.black.cgColor
    //    view.backgroundColor = .clear
    //   }
    
    
    
    
    // MARK: - Actions
    
    @IBAction func turnButtonAction(_ sender: UIButton) {
        svetoforView.svitchMode()
      
        
        //        if firstSectionView.backgroundColor == .clear && secondSectionView.backgroundColor == .clear && thirdSectionView.backgroundColor == .clear {
        //            firstSectionView.backgroundColor = .systemRed
        //        } else if firstSectionView.backgroundColor == .systemRed {
        //            firstSectionView.backgroundColor = .clear
        //            secondSectionView.backgroundColor = .systemOrange
        //        } else if secondSectionView.backgroundColor == .systemOrange {
        //            secondSectionView.backgroundColor = .clear
        //            thirdSectionView.backgroundColor = .systemGreen
        //        } else if thirdSectionView.backgroundColor == .systemGreen {
        //            thirdSectionView.backgroundColor = .clear
        //        }
        //        
        
        
        
        
        
        //    func createGreenView() {
        //        var greenView = UIView(frame: CGRect(x: 100, y: 300, width: 200, height: 200))
        //        greenView.backgroundColor = .green
        //        view.addSubview(greenView)
        //    }
        
    }
}
