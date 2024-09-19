\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 101"
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
  I mer- cy will and judge- ment sing
  Lord, I will sing to thee.
  With wis- dom in a per- fect way
  shall my be- hav- ior be.
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