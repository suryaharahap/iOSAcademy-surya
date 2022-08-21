import UIKit

private var isFollow = false

class ProfileViewController: UIViewController {
  
  @IBOutlet weak var profileImageView: UIImageView!
  @IBOutlet weak var followedButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupCircleImageView()
  }
  
  @IBAction func setFollowed(_ sender: UIButton) {
    isFollow = !isFollow
    followedButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
  }
  
  private func setupCircleImageView() {
    profileImageView.layer.borderWidth = 1
    profileImageView.layer.masksToBounds = false
    profileImageView.layer.borderColor = UIColor.black.cgColor
    profileImageView.layer.cornerRadius = profileImageView.frame.height/2
    profileImageView.clipsToBounds = true
  }
}

