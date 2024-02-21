# ⏰ Custom Hourly Picker in SwiftUI ⏰

This repository contains a custom hourly picker component developed in SwiftUI.

## 📝 Description

The Custom Hourly Picker provides an intuitive and user-friendly interface for users to select specific hours within a defined range. Designed with flexibility in mind, this hour selector allows extensive customization to suit various design and functionality needs.

## ✨ Features

- Intuitive interface for selecting hours.
- Customization of the hour range.
- Easy integration into SwiftUI projects.
- Modular and clean implementation.

## 🚀 Usage

To integrate the Custom Hourly Picker into your SwiftUI project, simply follow the installation steps detailed in the documentation included in this repository.

```swift
struct ContentView: View {
    @State private var selectedTime: String = fromDateToStringHour()
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "clock")
                Text("Time: \(selectedTime)")
            }
            
            CustomHourPicker(selectedTime: $selectedTime)
        }
    }
}
```

## 🎬 Demo

A demonstration is included to showcase the Custom Hourly Picker in action. Refer to the demo files for more information on how to use this component in your own projects.

![Hourly picker](https://github.com/santelizvargas/Custom-Date-Picker/assets/79380665/d2f514f0-9256-4bbf-ac3f-1abecdc606e3)
<img width="328" alt="image" src="https://github.com/santelizvargas/Custom-Date-Picker/assets/79380665/9dc0d738-e9c2-4566-b754-be9cb6139d70">

## 🤝 Contributing

If you'd like to contribute to this project, you're welcome to do so! Feel free to open an issue or submit a pull request with your improvements.

## 📧 Contact

If you have any questions or suggestions, feel free to contact the development team via [email](mailto:ushija6@gmail.com).
