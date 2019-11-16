//
//  LandmarkList.swift
//  Landmarks
//
//  Created by SeokJun Jeong on 2019/11/14.
//  Copyright © 2019 dino. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoriteOnly = false
    
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                if !self.showFavoriteOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max", "iPhone 11"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
