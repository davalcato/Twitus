//
//  HomeDatasourceController.swift
//  Twitus
//
//  Created by Daval Cato on 4/9/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let words = ["user1", "user2", "user3"]

    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
    
}

class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
       
    }
}















