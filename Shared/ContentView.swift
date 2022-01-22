//
//  ContentView.swift
//  Shared
//
//  Created by Alaina Thompson on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button("Calculate Sphere Volume", action: {let _ =  self.sphereVolume()})
            .padding(.bottom)
            .padding()
        
        Button("Calculate Sphere Surface Area", action: {let _ =  self.sphereSurfaceArea()})
            .padding(.bottom)
            .padding()
        
        Button("Calculate Bounding Box Volume", action: {let _ =  self.boundingBoxVolume()})
            .padding(.bottom)
            .padding()
        
        Button("Calculate Bounding Box Surface Area", action: {let _ =  self.boundingBoxSurfaceArea()})
            .padding(.bottom)
            .padding()
        
    }
    
    
    
        var radius = 2.0
        
        
func sphereVolume() -> Double {
    let sphereVolume = (4/3)*Double.pi*pow(radius, 3)
    print(sphereVolume)
    return sphereVolume
    
}
        
    func sphereSurfaceArea() -> Double {
        let sphereSurfaceArea = 4.0*Double.pi*pow(radius, 2)
        print(sphereSurfaceArea)
        return sphereSurfaceArea
    }
    
    func boundingBoxVolume() -> Double {
        let boxSide = 2*radius
        let boxVolume = pow(boxSide, 3)
        let boundingBoxVolume = boxVolume - sphereVolume()
        print(boundingBoxVolume)
        return boundingBoxVolume
    }
    
    
    func boundingBoxSurfaceArea() -> Double {
        let boxSurfaceArea = 6.0*pow(2*radius, 2)
        let boundingBoxSurfaceArea = boxSurfaceArea + sphereSurfaceArea()
        print(boundingBoxSurfaceArea)
        return boundingBoxSurfaceArea
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
