//
//  ContentView.swift
//  Shared
//
//  Created by Alaina Thompson on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Calculate", action: {let _ = self.sphereVolume()})
            .padding(.bottom)
            .padding()
    }


func sphereVolume() -> Double {
    let radius = 2.0
    let sphereVolume = (4/3)*Double.pi*pow(radius, 3)
    print("Sphere of radius =", radius, "has a volume =", sphereVolume)
    return sphereVolume
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
