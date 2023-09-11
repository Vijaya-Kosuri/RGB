

import SwiftUI

struct SetColorButton: View {
  @Binding var foregroundColor : Color
  @Binding var redColor: Double
  @Binding var blueColor: Double
  @Binding var greenColor: Double
  @Environment(\.colorScheme) var colorScheme
  //var isDarkMode: Bool
  
  var body: some View {
    Button("Set Color") {
      
      foregroundColor = Color(red: redColor / Constants.General.limit, green: greenColor / Constants.General.limit, blue: blueColor / Constants.General.limit)
    }
    .padding(20.0)
    .background(Color("ButtonColor"))
    .foregroundColor(.white)
    .cornerRadius(Constants.General.roundedRectCornerRadius)
    
    .background(
      RoundedRectangle(cornerRadius:Constants.General.roundedRectCornerRadius)
        .stroke(Color.white, lineWidth: Constants.General.strokeWidth)
        .background(
          RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
            .foregroundColor(Color.white)
        )
    )
    
  }
}

struct ButtonViews_Previews: PreviewProvider {
    static var previews: some View {
      Text("sample")
    }
}
