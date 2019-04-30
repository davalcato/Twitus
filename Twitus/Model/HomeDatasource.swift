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
        let shaiUser = User(name: "Shai Chavez", username: "@shaiclothing.com", bioText: "For many of us, the vernal shift also brings an “aha” moment in front of the mirror, when the requisite sweaters and boots of recent months suddenly feel like remnants from another era.", profileImage: UIImage(named:"girl_profile_image.png")!
        
        let katUser = User(name: "Kat Pasion", username: "@pasionTV", bioText: "Kat is a tv personality with a few show on Snapchat", profileImage: pretty_profile_image.png)
            
//            UIImage(named:"pretty_profile_image.png"
      
        return [shaiUser, katUser]
        
    }()
    

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










