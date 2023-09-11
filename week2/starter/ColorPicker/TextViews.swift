

import SwiftUI


struct BodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    BodyText(text : "Sample")
  }
}
