# UsingClosureToBackData
# 📦 UsingClosureToBackData – Passing Data Back with Closures in UIKit

This is a simple UIKit project demonstrating how to **pass data back from a second screen to the first screen** using **closures**. It’s a common pattern in iOS development when the second screen is presented modally or pushed, and we need to send some information back before dismissing it.

---

## 🧠 What I Learned

### ✅ 1. Why We Need Closures to Pass Data Back

- When we navigate to another screen (`present` or `push`), that screen **doesn't know anything about the previous one**.
- If we just call `dismiss()` or `popViewController()`, the second screen disappears without sending data back.
- To fix that, we can define a **closure** property in the second screen and call it before dismissing.

---

### ✅ 2. How to Write and Use a Closure

#### 💡 Step 1: Declare a closure in the second screen

```swift
var dataBackClosure: ((String) -> Void)?
@IBAction func backButtonPressed(_ sender: Any) {
    dataBackClosure?(textField.text ?? "")
    dismiss(animated: true)
}

let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
secondVC.modalPresentationStyle = .fullScreen
secondVC.dataBackClosure = { [weak self] returnedData in
    self?.label.text = returnedData
}
present(secondVC, animated: true)
```
## 🧩 App Structure

### 🟢 First Screen (MainViewController)
- Contains a UILabel  
- A "Move" button that navigates to the second screen  
- Receives the data returned from the second screen and displays it in the label  

### 🔵 Second Screen (SecondViewController)
- Contains a UITextField  
- A "Back" button  
- Uses a closure to pass the entered text back before dismissing  

---

## ▶️ Run the Project

1. Open the project in Xcode  
2. Run on any simulator  
3. Tap "Move" → go to second screen  
4. Enter any text  
5. Tap "Back"  
6. You'll return to the first screen and see the text appear in the label  

---

## ✅ Summary

This project helped me understand:

- How screen transitions work (`present` / `dismiss`)  
- Why the second screen doesn’t automatically talk to the first one  
- How to use closures to send data back cleanly and safely  

> **Closure-based data passing is one of the most useful tools in UIKit development.**  
> Once you master it, passing data back becomes clean and flexible!


