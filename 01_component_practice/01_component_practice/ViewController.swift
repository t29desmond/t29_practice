//
//  ViewController.swift
//  01_component_practice
//
//  Created by 윤대식 on 2022/06/02.
//

import UIKit

class ViewController: UIViewController {

  var countNum: Int = 0

  @IBOutlet weak var memberName: UILabel!
  @IBOutlet weak var memberCareer: UILabel!

  @IBOutlet weak var memberPhoto: UIImageView!
  @IBOutlet weak var memberPhotoBar: UIView!

  @IBOutlet weak var previousLabel: UIButton!
  @IBOutlet weak var nextLabel: UIButton!

  override func viewDidLoad() {

    super.viewDidLoad()
    view.backgroundColor = .systemGray6

    self.memberPhoto.layer.cornerRadius = 28
    self.memberPhotoBar.backgroundColor = .systemGray4

    self.memberPhotoBar.layer.cornerRadius = 26
    self.memberPhotoBar.layer.maskedCorners = CACornerMask(arrayLiteral:
        .layerMinXMaxYCorner, .layerMaxXMaxYCorner)

    self.memberPhoto.image = UIImage(named: mozzetMemberInfo[0].photo)
    self.memberName.text = mozzetMemberInfo[0].name
    self.memberCareer.text = mozzetMemberInfo[0].career

    self.memberName.font = UIFont.systemFont(ofSize: 24, weight: .bold)
    self.memberCareer.font = UIFont.systemFont(ofSize: 20, weight: .regular)

    self.previousLabel.setTitle("이전", for: .normal)
    self.nextLabel.setTitle("다음", for: .normal)

  }


  @IBAction func previousButton(_ sender: UIButton) {
    countNum = countNum - 1

    if countNum < 0 {
      self.countNum = mozzetMemberInfo.count - 1
    }
    self.memberPhoto.image = UIImage(named: mozzetMemberInfo[countNum].photo)
    self.memberName.text = mozzetMemberInfo[countNum].name
    self.memberCareer.text = mozzetMemberInfo[countNum].career
  }


  @IBAction func nextButton(_ sender: UIButton) {
    countNum = countNum + 1

    if countNum < 0 {
      self.countNum = mozzetMemberInfo.count + 1
    } else if countNum == 13 {
      countNum = 0
  }
    self.memberPhoto.image = UIImage(named: mozzetMemberInfo[countNum].photo)
    self.memberName.text = mozzetMemberInfo[countNum].name
    self.memberCareer.text = mozzetMemberInfo[countNum].career
  }
}

