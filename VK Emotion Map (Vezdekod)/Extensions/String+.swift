//
//  String+.swift
//  VK Emotion Map (Vezdekod)
//
//  Created by Alex Yatsenko on 18.09.2020.
//  Copyright © 2020 AlexislogS. All rights reserved.
//

import UIKit

extension String {
    func emojiToImage() -> UIImage? {
        let size = CGSize(width: 40 , height: 40)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).set()
        let rect = CGRect(origin: CGPoint(x: 6, y: 6), size: size)
        UIRectFill(CGRect(origin: CGPoint(), size: size))
        (self as NSString).draw(in: rect,
                                withAttributes: [.font: UIFont.systemFont(ofSize: 24)])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
