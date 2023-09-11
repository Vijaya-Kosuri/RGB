
import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  @State private var redColor: Double = 0.0
  @State private var greenColor: Double = 0.0
  @State private var blueColor: Double = 0.0
  @State private var foregroundColor = Color(red: 0, green: 0, blue: 0)
  
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View {
    
    GeometryReader { geometry in
      let width = geometry.size.width
      let height = geometry.size.height
      
      if width > height { //Landscape orientation
        
        HStack{
          VStack{
            HeaderView()
            RoundRectView(foregroundColor : $foregroundColor)
          }
          VStack {
            BodyText(text : "Red")
              .foregroundColor(Color("TextColor"))
            SliderRedView(redColor : $redColor )
            
            BodyText(text : "Green")
              .foregroundColor(Color("TextColor"))
            SliderGreenView(greenColor: $greenColor)
            
            BodyText(text : "Blue")
              .foregroundColor(Color("TextColor"))
            SliderBlueView(blueColor: $blueColor)
            
            SetColorButton(foregroundColor : $foregroundColor,redColor : $redColor, blueColor : $blueColor, greenColor : $greenColor)
          }
          
          
        }
        .padding(Constants.General.padlimit)
      }
      else { //Portrait orientation
        VStack {
          HeaderView()
          RoundRectView(foregroundColor : $foregroundColor)
          
          BodyText(text : "Red")
            .foregroundColor(Color("TextColor"))
          SliderRedView(redColor : $redColor )
          
          BodyText(text : "Green")
            .foregroundColor(Color("TextColor"))
          SliderGreenView(greenColor: $greenColor)
          
          BodyText(text : "Blue")
            .foregroundColor(Color("TextColor"))
          SliderBlueView(blueColor: $blueColor)
          
          SetColorButton(foregroundColor : $foregroundColor,redColor : $redColor, blueColor : $blueColor, greenColor : $greenColor)
        }
        .padding(Constants.General.padlimit)
      }
    }
  }
}

struct RoundRectView: View {
  @Binding var foregroundColor : Color
  var body: some View {
    ZStack{
      RoundedRectangle(cornerRadius: 0)
        .fill(foregroundColor)
        .saturation(Constants.General.saturationlimit)
        .opacity(Constants.General.opacitylimit)
      RoundedRectangle(cornerRadius: 0)
        .fill(foregroundColor)
        .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .preferredColorScheme(.dark)
    
  }
}
