//
//  wage.swift
//  Easy Calc
//
//  Created by Gokul Nair on 15/06/20.
//  Copyright © 2020 Gokul Nair. All rights reserved.
//

import Foundation


class wage{
    
     func getHours(forWage wage:Double, price:Double)-> Int {
        
        return Int(ceil(price/wage))
        
      }
   }

