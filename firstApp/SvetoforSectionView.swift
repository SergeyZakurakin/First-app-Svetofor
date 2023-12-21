//
//  SvetoforSectionView.swift
//  firstApp
//
//  Created by Sergey Zakurakin on 17/12/2023.
//

import UIKit

enum Colors {
    case red
    case orange
    case green
    
    
    
//    func color() -> UIColor {
//        switch self {
//        case .red:
//            return UIColor.red
//        case .orange:
//            return UIColor.orange
//        case .green:
//            return UIColor.green
//        }
//    }
}



class SvetoforSectionView: UIView {
    
    var colorLight: Colors?
    
    
    
    init(colorLight: Colors) {
        super.init(frame: .zero)
        
        self.colorLight = colorLight
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // инициализация с сториборда, (момент создания из сториборда обьекта)
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupView()
        
    }
    
    func setupView() {
        layer.cornerRadius = frame.width / 2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
    
    //включение
    func turnON() {
        switch colorLight {
        case .red:
            backgroundColor = .systemRed
        case .orange:
            backgroundColor = .systemOrange
        case .green:
            backgroundColor = .systemGreen
        case .none:
            break
        }
        
        
    }
    
    //выключение
    func turnOff() {
        backgroundColor = .clear
    }
    
    //получение состояния секции
    func isOff() -> Bool {
        if backgroundColor == .clear {
            return true
        } else {
            return false
        }
    }
    
    func isOn() -> Bool {
        if backgroundColor == .clear {
            return false
        } else {
            return true
        }
    }
    
}
