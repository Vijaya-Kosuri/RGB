

import SwiftUI

struct SliderRedView: View {
  @Binding var redColor: Double
  
  var body: some View {
    HStack {
      Slider(value: $redColor, in: 0...255)
        .tint(.red)
      Text("\(Int(redColor.rounded()))")
    }
  }
}

struct SliderGreenView: View {
  @Binding var greenColor: Double
  
  var body: some View {
    HStack {
      Slider(value: $greenColor, in: 0...255)
        .tint(.green)
      Text("\(Int(greenColor.rounded()))")
    }
  }
}

struct SliderBlueView: View {
  @Binding var blueColor: Double
  
  var body: some View {
    HStack {
      Slider(value: $blueColor, in: 0...255)
        .tint(.blue)
      Text("\(Int(blueColor.rounded()))")
    }
  }
}

struct SliderViews_Previews: PreviewProvider {
  
  static var previews: some View {
    Text("Red")
    
  }
}
