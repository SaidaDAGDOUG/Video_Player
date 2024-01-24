# Video Player App 

## Overview

This iOS app project is part of the Coursera course "Introduction to iOS Mobile Application Development." The project focuses on creating a video player application to demonstrate understanding of key concepts covered in the course.

## Project Description

At this stage of the lesson, you should be familiar with the steps required to create a video player.  

By completing this exercise, you'll demonstrate your ability to:  

-Create an iOS project and add an mp4 video file to it.  
-Add import statements and override functions to ViewController.   
-Create and call a play function to play the video file.  

## Instructions
Follow these steps to complete the project:

**Step 1: Create an iOS project**  
  Create a new project using the Xcode App Template and call it video_player.  
<img width="1412" alt="Screenshot_Step2" src="https://github.com/SaidaDAGDOUG/Video_Player/assets/92460033/0a00ea01-cdbf-4427-8020-295c835368da">
<img width="1390" alt="Screenshot_Step1_AppOptions" src="https://github.com/SaidaDAGDOUG/Video_Player/assets/92460033/9849f9f4-ece3-44bf-a862-0815f96b3c9a">


**Step 2: Add an mp4**  
  Add an mp4 video file to the  video_player module in the project.
  <img width="1437" alt="Screenshot_Step2_MP4Added" src="https://github.com/SaidaDAGDOUG/Video_Player/assets/92460033/329e5b30-c60e-4fd5-965e-89d0853eb7bd">


**Step 3: Create an override function**  
   In the ViewController file,create an override function as indicated below:
   ```swift
    override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
      }
   ```
    
**Step 4: Add import statements**  
   Add the following import statements at the top of the file if they don’t exist:
   ```swift
     import UIKit
     import AVKit
     import AVFoundation
   ```

**Step 5: Create and call a play function:**  
   Create a private function called playVideo:
   ```swift
     private func playVideo(){
     }
   ```
   
**Step 6: Locate the video**  
  In the playVideo function, add this code snippet to get the location of the video file you added initially.
  ```swift
      guard let path=Bundle.main.path(forResource: "test", ofType:"mp4") else {
                  debugPrint("test.mp4 not found")
                  return
              }
   ```

**Step 7: Play the video**  
   In the playVideo function, add this code snippet to play the video file.
   ```swift
       let player = AVPlayer(url: URL(fileURLWithPath: path))  
       let playerController = AVPlayerViewController()  
       playerController.player=player  
             present(playerController, animated: true) {  
       player.play()  
                    }
   ```
  
**Step 8: Call the function**  
  Call the playVideo function in the override function initially created.
   ```swift
      override func viewDidAppear(_ animated: Bool) {  
              super.viewDidAppear(animated)  
              playVideo()  
          }
   ```

**Step 9: Run the app**    
   Run the app on either a simulator or a physical device. You should see something like the image below:    
<img width="1406" alt="Screenshot_Step9" src="https://github.com/SaidaDAGDOUG/Video_Player/assets/92460033/3592052f-c54b-4b2a-98de-7de11f3336ea">


Feel free to explore the source code and learn more about iOS app development through video playback.

---
