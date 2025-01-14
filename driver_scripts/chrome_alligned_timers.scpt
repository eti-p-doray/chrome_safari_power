tell application "Chromium" 
    if it is running then
      activate
      set w to first window

      set bounds of front window to {0, 0, 1920, 1080}

      set base_url to "file:///Users/$USER/git/chrome_safari_power/pages/spam_tasks.html?interval=200"
      
      set num_peers to 4
      repeat with i from 1 to num_peers 
        make new window
        set bounds of front window to {1080 / num_peers*i, 0, 1920, 1080}
        set full_url to base_url & "&numPeers=" & num_peers & "&peerID=" & i
        open location full_url
      end repeat

      delay 60

      activate
    end if

end tell