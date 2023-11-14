\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 23"
  subtitle = "(tune: Evan)"
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

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                               <ef  c  >2 |
    % Verse 1
    <c   ef >4 <c   af'>4 <ef  c'>2  <df  bf'>2 | < c  af'>4 <df   f >4 < c  ef >2  < c  ef >2 |
    <c   ef >4 <c   af'>4 <c   c'>2  < c  af'>2 | <ef  bf'>1                        <ef  df'>2 |
    <ef  c '>4 <df  bf'>4 <c  af'>2  <ef  bf'>2 | <ef  c '>4 <ef  af >4 <df   f >2  <bf  ef >2 |
    <c   ef >4 <c   af'>4 <ef c '>2  <df  bf'>2 | <c   af'>1                             \bar "|."
  }
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                                <af  af'>2 |
    % Verse 1
    <af  af'>4 <af  af'>4 <af  af'>2  <ef' g  >2 | <f   af >4 <df  af'>4 <af  af'>2 <af  af'>2 |
    <af  af'>4 <    af'>4 <f   af >2  <f   af >2 | <ef  g  >1                       <g   bf >2 |
    <    af >4 <ef  g  >4 <f   af >2  <ef  g  >2 | <    af >4 <c , af'>4 <df  af'>2 <ef  g  >2 |
    <af, af'>4 <f ' af >4 <ef  af >2  <ef  g  >2 | <af, af'>1                          \bar "|."
  }
}

verseTBVoice = \lyricmode {
  % Verse 1
  The Lord's my shep- herd, I'll not want.
  He makes me down to lie
  In pas- tures green: he lead- eth me
  the qui- et wa- ters by.
}

SAVoicePart = \new Staff \with {
  instrumentName = "SA"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SAVoice }
\addlyrics { \versesVoice }

TBVoicePart = \new Staff \with {
  instrumentName = "TB"
  midiInstrument = "Voice Oohs"
} { \clef bass \TBVoice }

\score {
  <<
    \SAVoicePart
    \TBVoicePart
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