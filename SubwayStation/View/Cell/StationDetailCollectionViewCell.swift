//
//  StationDetailCollectionViewCell.swift
//  SubwayStation
//
//  Created by 1 on 2023/01/02.
//

import UIKit

class StationDetailCollectionViewCell: UICollectionViewCell {
    private lazy var linelabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .bold)
        
        return label
    }()
    
    private lazy var remainTimelabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .medium)
        
        return label
    }()
    
    func setup() {
        
        
        
        layer.cornerRadius = 12
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10
        backgroundColor = .systemBackground  // 29번줄부터 여기까지 그림자 만들기
        
        [linelabel, remainTimelabel].forEach {
            addSubview($0)
        }
        
        linelabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.top.equalToSuperview().inset(16)
        }
        
        remainTimelabel.snp.makeConstraints {
            $0.leading.equalTo(linelabel)
            $0.top.equalTo(linelabel.snp.bottom).offset(16)
            $0.bottom.equalToSuperview().inset(16)
        }
        
        linelabel.text = "오른쪽 방면"
        remainTimelabel.text = "왼쪽방면"
        
    }
   
    
}
