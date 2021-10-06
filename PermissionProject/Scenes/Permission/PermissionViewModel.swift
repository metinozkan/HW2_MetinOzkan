//
//  PermissionViewModel.swift
//  PermissionProject
//
//  Created by Metin özkan on 6.10.2021.
//

import Foundation
import UIKit


class PermissionViewModel {
    
    
    private let manager:PermissionManagerProtocol
    
    
    init(manager:PermissionManagerProtocol){
        self.manager = manager
    }
    
    func getPermissionMainViewData() ->PermissionMainViewData {
        
        return manager.getPermissionMainViewData(with: negativeListenerHandler, with: positiveListenerHandler)
        
        
        
    }
    
    lazy var negativeListenerHandler: VoidCompletionBlock = { [weak self] in
            print("negative pressed")
        
        }
        
        lazy var positiveListenerHandler: VoidCompletionBlock = { [weak self] in
            print("positive pressed")
        }
}
