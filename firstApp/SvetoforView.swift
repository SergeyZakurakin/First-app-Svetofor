//
//  SvetoforView.swift
//  firstApp
//
//  Created by Sergey Zakurakin on 17/12/2023.
//

import UIKit
import SnapKit




class SvetoforView: UIView {
    
    
    let sections: [SvetoforSectionView] = [SvetoforSectionView.init(colorLight: .red),
                                           SvetoforSectionView.init(colorLight: .orange),
                                           SvetoforSectionView.init(colorLight: .green),
                                           SvetoforSectionView.init(colorLight: .red),
                                           SvetoforSectionView.init(colorLight: .orange),
                                           SvetoforSectionView.init(colorLight: .green)]
    
    let blueView = UIView(frame: .zero)
    
    let stackView = UIStackView(frame: .zero)
    
    
    
    
    init() {
        super.init(frame: .zero)
        
        configureStackView()
        setStartState()
      
                
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Public
    
    
    
    
    
    func svitchMode() {
        
        if let indexOfFirstOnSection = sections.firstIndex(where: {$0.isOn()}), indexOfFirstOnSection < sections.count - 1 {
            sections[indexOfFirstOnSection].turnOff()
            sections[indexOfFirstOnSection + 1].turnON()
        } else {
            for section in sections {
                section.turnOff()
            }
            sections.first?.turnON()
        }
        
        
//        if firstSectionView.isOff() && secondSectionView.isOff() && thirdSectionView.isOff() {
//            firstSectionView.turnON()
//        } else if firstSectionView.isOn() {
//            firstSectionView.turnOff()
//            secondSectionView.turnON()
//        } else if secondSectionView.isOn() {
//            secondSectionView.turnOff()
//            thirdSectionView.turnON()
//        } else if thirdSectionView.isOn() {
//            thirdSectionView.turnOff()
//            
//        }
    }
    
    //MARK: - Private
    
    private func configureStackView() {
        addSubview(stackView)
        
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        
        
        
        for section in sections {
            stackView.addArrangedSubview(section)
            
            section.snp.makeConstraints { make in
                make.width.height.equalTo(100)
            }
        }
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
//
//        firstSectionView.snp.makeConstraints { make in
//            make.height.width.equalTo(100)
//        }
//        secondSectionView.snp.makeConstraints { make in
//            make.height.width.equalTo(100)
//        }
//        thirdSectionView.snp.makeConstraints { make in
//            make.height.width.equalTo(100)
//        }
    }
    
    private func setStartState() {
        for section in sections {
            section.turnOff()
        }
       // тоже что и више (95 строка)
//        sections.forEach { section in
//            section.turnOff()
//        }
        
        //еще более ктратко
//        sections.forEach({ $0.turnOff() })
        
    }
    
}
