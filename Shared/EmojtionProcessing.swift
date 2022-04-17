//
//  EmojtionProcessing.swift
//  Emojtion
//
//  Created by Jake Mismas on 4/16/22.
//

import Foundation
import AppKit

class EmojtionProcessing : NSPasteboard {
    
    func copyToClip( emoji : String) {
        let pasteBoard = NSPasteboard.general
            pasteBoard.clearContents()
            pasteBoard.setString("test", forType: .string)
    }
}

