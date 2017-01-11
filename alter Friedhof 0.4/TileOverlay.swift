//
//  TileOverlay.swift
//  alter Friedhof 0.4
//
//  Created by Christopher Reitz on 11/01/2017.
//  Copyright © 2017 HiWi. All rights reserved.
//

import Foundation
import MapKit

// This subclass was created to set alpha and for debug purposes
// Can set break point and check tile zoo, x, and y being accessed
class TileOverlay: MKTileOverlay {

    var alpha: CGFloat = 0.7

    override func loadTile(at path: MKTileOverlayPath, result: @escaping (Data?, Error?) -> Void) {
        super.loadTile(at: path, result: result)

        // Set breakpoint or write out path for debug
        print("\(path)")
    }
}
