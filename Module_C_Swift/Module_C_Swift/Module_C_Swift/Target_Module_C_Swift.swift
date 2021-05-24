//
//  Target_Module_C_Swift.swift
//  Module_C_Swift
//
//  Created by shinho on 2021/5/20.
//

import UIKit

@objc class Target_Module_C_Swift: NSObject {

    @objc func Action_Extension_ViewController(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("OC -> extetion -> swift -> success")
        }

        let aViewController = CViewController()
        return aViewController
    }
    
    @objc func Action_Category_ViewController(_ params:NSDictionary) -> UIViewController {
        
        if let block = params["callback"] {
    
            typealias CallbackType = @convention(block) (NSString) -> Void
            let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())
            let callback = unsafeBitCast(blockPtr, to: CallbackType.self)
            
            callback("OC -> category -> swift - success")
        }
        
        let aViewController = CViewController()
        return aViewController
    }
}

