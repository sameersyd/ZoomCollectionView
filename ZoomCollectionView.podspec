Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "ZoomCollectionView"
s.summary = "ZoomCollectionView lets a user create collection view with Carousel and KenBurns effect."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4
s.author = { "Sameer Nawaz" => "sameer.nwaz@gmail.com" }

# 5
s.homepage = "https://github.com/sameersyd/ZoomCollectionView"

# 6
s.source = { :git => "https://github.com/sameersyd/ZoomCollectionView.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.dependency 'UPCarouselFlowLayout'

# 8
s.source_files = "ZoomCollectionView/**/*.{swift}"

# 9
s.resources = "ZoomCollectionView/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "5"

end

