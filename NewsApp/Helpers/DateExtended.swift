//
//  DateExtended.swift
//  NewsApp
//
//  Created by plamena on 13.06.19.
//  Copyright © 2019 plamena. All rights reserved.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
