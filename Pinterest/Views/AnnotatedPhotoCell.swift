import UIKit

class AnnotatedPhotoCell: UICollectionViewCell {
  
  let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let captionLabel: UILabel = {
      let label = UILabel()
    label.textColor = .white
    label.backgroundColor = UIColor(red: 12/255, green: 92/255, blue: 42/255, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 12)
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
  }()
  
  let commentLabel: UILabel = {
      let label = UILabel()
    label.backgroundColor = UIColor(red: 12/255, green: 92/255, blue: 42/255, alpha: 1)
    label.textColor = .white
    label.font = UIFont.systemFont(ofSize: 9)
      label.translatesAutoresizingMaskIntoConstraints = false
    label.numberOfLines = 0
    label.lineBreakMode = .byWordWrapping
      return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureViews()
  }

  
  var photo: Photo? {
    didSet {
      if let photo = photo {
        imageView.image = photo.image
        captionLabel.text = photo.caption
        commentLabel.text = photo.comment
      }
    }
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configureViews() {
    contentView.layer.cornerRadius = 6
    contentView.layer.masksToBounds = true
    contentView.backgroundColor = UIColor(red: 12/255, green: 92/255, blue: 42/255, alpha: 1)
    
    contentView.addSubview(imageView)
    imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
//    imageView.heightAnchor.constraint(equalToConstant: 115).isActive = true

    
    contentView.addSubview(captionLabel)
    captionLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10).isActive = true
    captionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4).isActive = true
    captionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4).isActive = true
//    captionLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
    
    contentView.addSubview(commentLabel)
    commentLabel.topAnchor.constraint(equalTo: captionLabel.bottomAnchor, constant: 2).isActive = true
    commentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4).isActive = true
    commentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4).isActive = true
    commentLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
//    commentLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
  }
}
