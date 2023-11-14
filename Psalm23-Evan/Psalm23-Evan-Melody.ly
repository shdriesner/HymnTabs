\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 23"
  subtitle = "(tune: Evan - Melody Only)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Nov 2023"
  meter = ""
  copyright = "Copyright 2023 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoice = \lyricmode {
  % Verse 1
  The Lord's my shep- herd, I'll not want.
  He makes me down to lie
  In pas- tures green: he lead- eth me
  the qui- et wa- ters by.
}

SoloVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                               <    ef  >2 |
    % Verse 1
    <    ef >4 <    af >4 <    c >2  <    bf >2 | <    af >4 <     f >4 <    ef >2  <    ef >2 |
    <    ef >4 <    af >4 <    c >2  <    af >2 | <    bf >1                        <    df >2 |
    <    c  >4 <    bf >4 <   af >2  <    bf >2 | <    c  >4 <    af >4 <     f >2  <    ef >2 |
    <    ef >4 <    af >4 <   c  >2  <    bf >2 | <    af >1                             \bar "|."
  }
}

verseTBVoice = \lyricmode {
  % Verse 1
  The Lord's my shep- herd, I'll not want.
  He makes me down to lie
  In pas- tures green: he lead- eth me
  the qui- et wa- ters by.
}

SoloVoicePart = \new Staff \with {
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SoloVoice }
\addlyrics { \versesVoice }

\score {
  <<
    \SoloVoicePart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 2)
    }
  }
}

\markup {
  \fill-line {
    ""
    {
      \column {
        \left-align {
  	  "3  My soul he doth re- store a- gain;"
	  "     and me to walk doth make"
	  "   With- in the paths of right- eous- ness,"
	  "     ev'n for his own name's sake"
	  "                  ---"
	  "4  Yea, though I walk in death's dark vale,"
	  "     yet will I fear none ill:"
  	  "   For thou art with me; and thy rod"
	  "     and staff me com- fort still."
	  "                  ---"
	  "5  My ta- ble thou hast fur- nish- ed"
	  "     in pre- sence of my foes;"
	  "   My head thou dost with oil a- noint,"
	  "     and my cup o- ver- flows."
	  "                  ---"
	  "6  Good- ness and mer- cy all my life"
	  "     shall sure- ly fol- low me:"
	  "   And in God's house for- e- ver more"
	  "     my dwell- ing place shall be"
        }
      }
    }
    ""
  }
}