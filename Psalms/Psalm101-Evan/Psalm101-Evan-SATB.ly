\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 101"
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
  I mer- cy will and judge- ment sing
  Lord, I will sing to thee.
  With wis- dom in a per- fect way
  shall my be- hav- ior be.
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
      tempoWholesPerMinute = #(ly:make-moment 80 2)
    }
  }
}

\markup {
  \fill-line {
    ""
    {
      \column {
        \left-align {
  	  "   O when, in kind- ness un- to me, wilt thou be pleas'd to come?"
	  "    I with a per- fect heart will walk with- in my house at home"
	  "                  ---"
	  "3  I will en- dure no wick- ed thing be- fore mine eys to be:"
  	  "    I hate their work that turn a- side, it shall not cleave to me."
	  "                  ---"
	  "4  A stub- born and a fro- ward heart de- part quite from me shall;"
	  "    A per- son giv'n to wick- ed- ness I will not know at all."
	  "                  ---"
	  "5  I'll cut him off that slan- der- eth his neigh- bor pri- vi- ly:"
	  "    The haught- y heart I will not bear, nor him that look- eth high."
	  "                  ---"
	  "6  Up- on the faith- ful of the land mine eyes shall be, that they"
	  "    May dwell with me: he shall me serve that walks in per- fect way."
	  "                  ---"
	  "7  Who of de- ceit a work- er is, in my house shall not dwell;"
	  "    And in my pre- sence shall he not re- main that lies doth tell."
	  "                  ---"
	  "8  Yea, all the wick- ed of the land ear- ly de- stroy will I;"
	  "    All from God's ci- ty to cut off that work in- i- qui- ty."
	  "                  ---"
	  "   Amen"
        }
      }
    }
    ""
  }
}