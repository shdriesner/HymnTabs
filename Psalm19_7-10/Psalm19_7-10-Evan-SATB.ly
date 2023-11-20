\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 19:7-10 -- The Psalms of David in Metre, pg 29-30"
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
  God's law is per- fect and con- verts
  the soul in sin that lies;
  God's test- i- mo- ny is most sure
  and makes the sim- ple wise.
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
      tempoWholesPerMinute = #(ly:make-moment 100 2)
    }
  }
}

\markup {
  \fill-line {
    {
      \column {
        \left-align {
  	  "8  The stat-utes of the Lord are right,"
	  "     and do re-joice the heart:"
	  "   The Lord's com-mand is pure, and doth"
	  "     light to the eyes im-part."
	  "                  ---"
	  "9  Un-spot-ted is the fear of God"
  	  "     and doth en-dure for-ever:"
  	  "   The judge-ments of the Lord are true"
  	  "     and right-eous al-to-gether."
	  "                  ---"
	  "10 They more than gold, yea, much fine gold,"
  	  "     to be de-sir-ed are:"
  	  "   Than hon-ey, hon-ey from the comb"
  	  "     that drop-peth sweet-er far."
        }
      }
    }
  }
}