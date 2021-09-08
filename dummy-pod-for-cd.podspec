Pod::Spec.new do |spec|

  spec.name         = "dummy-pod-for-cd"

  spec.version      = "0.54.2.4c38603"
  
  spec.summary      = "dummy-pod"

  spec.description  = "dummy-pod for testing cd"

  spec.homepage     = "https://github.com/skyflow-tejesh-reddy/ios-cd-test"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Tejesh Reddy" => "tejesh.allampati@skyflow.com" }

  spec.swift_version = '4.2'

  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"


  spec.source       = { :git => "https://github.com/skyflow-tejesh-reddy/ios-cd-test.git", :commit => "4c38603" }


  spec.source_files  = "dummy-pod-for-cd/Classes/**/*.{swift}"

end

