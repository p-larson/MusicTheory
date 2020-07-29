//
//  Measure.swift
//  MusicTheory iOS
//
//  Created by Peter Larson on 7/27/20.
//  Copyright © 2020 cemolcay. All rights reserved.
//
//  https://github.com/cemolcay/MusicTheory
//

import Foundation

// Data Structure for a Music Measure
//
// Measure
//  Represents a segment of time defined by a Time Signature,
//  which contains several bars equal in length specified by
//  the Time Signature.
//
// https://en.wikipedia.org/wiki/Bar_%28music%29

// Bar
//  A Bar is a collection of present Note Values
//  Each bar may contain multiple KeyNotes, or left empty,
//  consequently representing a RestNote.
public struct Bar {
    
}

public struct Measure {
    public typealias NoteMap = [UInt:[NoteValue]]
    
    public var notes: NoteMap
    public var timing: TimeSignature
    public var line: Line
    
    public init(notes: NoteMap = [:], timing: TimeSignature, line: Line = .standard) {
        self.notes = notes
        self.timing = timing
        self.line = line
    }
    
    public enum Line {
        case standard, double, end, `repeat`, repeatEnd, restartRepeat
    }
}
