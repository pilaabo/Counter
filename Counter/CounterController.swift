import UIKit

class CounterController: UIViewController {

    @IBOutlet weak var countValueLabel: UILabel!
    
    @IBOutlet weak var historyTextView: UITextView!
    
    private var count = 0
    
    @IBAction func tapDecrementCountButton() {
        if count > 0 {
            count -= 1
            updateCountValueLabel()
            appendHistoryEntry("значение изменено на -1")
        }
        else {
            appendHistoryEntry("попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func tapIncrementCountButton() {
        count += 1
        updateCountValueLabel()
        appendHistoryEntry("значение изменено на +1")
    }
    
    @IBAction func tapResetCountButton() {
        count = 0
        updateCountValueLabel()
        appendHistoryEntry("значение сброшено")
    }
    
    private func updateCountValueLabel() {
        countValueLabel.text = "\(count)"
    }
    
    private func formattedCurrentDateTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let nowString = formatter.string(from: Date())
        return nowString
    }
    
    private func appendHistoryEntry(_ entry: String) {
        historyTextView.text = historyTextView.text +
        "\n" +
        formattedCurrentDateTime() +
        ": " +
        entry
    }
}
