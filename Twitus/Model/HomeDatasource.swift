//
//  HomeDatasource.swift
//  Twitus
//
//  Created by Daval Cato on 4/12/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import LBTAComponents


class HomeDatasource: Datasource {
    
    let users: [User] = {
        let davalUser = User(name: "Joie Chavez", username: "@shai.com", bioText: "For many of us, the vernal shift also brings an “aha” moment in front of the mirror, when the requisite sweaters and boots of recent months suddenly feel like remnants from another era.")
        
        let kimUser = User(name: "Kim Kardashian", username: "@fashionland", bioText: "Best clothing designer in New York")
        
        
        
        return [davalUser, kimUser]
        
    }()
    
//    let words = ["user1", "user2", "user3"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
}










