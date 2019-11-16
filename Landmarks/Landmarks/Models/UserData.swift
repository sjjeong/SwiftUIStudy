//
//  UserData.swift
//  Landmarks
//
//  Created by SeokJun Jeong on 2019/11/16.
//  Copyright © 2019 dino. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
