\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 19:7-10 -- The Psalms of David in Metre, pg 29-30"
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
  God's law is per- fect and con- verts
  the soul in sin that lies;
  God's test- i- mo- ny is most sure
  and makes the sim- ple wise.
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