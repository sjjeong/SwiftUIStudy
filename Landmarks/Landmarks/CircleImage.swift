//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by SeokJun Jeong on 2019/11/12.
//  Copyright © 2019 dino. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/.stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
