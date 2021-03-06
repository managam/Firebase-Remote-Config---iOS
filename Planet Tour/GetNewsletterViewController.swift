/**
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

class GetNewsletterViewController: UIViewController {

  // MARK: - IBOutlets
  @IBOutlet weak var instructionLabel: UILabel!
  @IBOutlet weak var thankYouLabel: UILabel!
  @IBOutlet weak var submitButton: UIButton!
  @IBOutlet weak var emailTextField: UITextField!

  // MARK: - View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()

    updateText()
    updateSubmitButton()
    thankYouLabel.isHidden = true
  }
}

// MARK: - IBActions
extension GetNewsletterViewController {

  @IBAction func submitButtonWasPressed(_ sender: AnyObject) {
    // We won't actually submit an email, but we can pretend
    submitButton.isHidden = true
    thankYouLabel.isHidden = false
    emailTextField.isEnabled = false
  }
}

// MARK: - FilePrivate
fileprivate extension GetNewsletterViewController {

  func updateText() {
    instructionLabel.text = AppConstants.subscribeVCText
    submitButton.setTitle(AppConstants.subscribeVCButton, for: .normal)
  }

  func updateSubmitButton() {
    submitButton.backgroundColor = AppConstants.appPrimaryColor
    submitButton.layer.cornerRadius = 5.0
  }
}
