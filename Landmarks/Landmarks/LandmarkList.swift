//
//  LandmarkList.swift
//  Landmarks
//
//  Created by SeokJun Jeong on 2019/11/14.
//  Copyright © 2019 dino. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarkData) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
