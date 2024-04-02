\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 118:1-6 - The Psalms of David in Metre, pg 244-245"
  subtitle = "(tune: Amazing Grace - Capo 3)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Mar 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

versesVoice = \lyricmode {
  % Verse 1
  O Praise the Lord, for He is good;
  his mer- cy last- eth ev'r.
  Let those of Is- ra- el now say,  
  His mer- cy fail- eth nev'r.
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <a  c  >4 |
    % Verse 1
    <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <bf g' >4  | <a f' >2 <bf d>4 | <a  c>2 <a  c>4 |
    <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <c g' >4   | <c  c'>2.( | <c  c'>2 ) <c a' >4 |
    <c c'>4.(<c a'>8) <c c'>8(<c a'>8) | <c f >2 <c>4  | <bf d>4.(<c  f>8) <bf f'>8(<bf d>8) |
    <a c>2 <c>4 | <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <bf g' >4  | <c f>2.( <c f>2 )  \bar "|."
  }
}

TBVoice = \relative {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <f  f'  >4 |
    % Verse 1
    <f c'>2 <f  f' >8( <a  f'>8)  | < c  f>2 < c e >4  | <d f >2 <bf f'>4 | <f  f'>2 <f  f'>4 |
    <f   c' >2 <f  f' >8( <a  f'>8)  | < c  f>2 <bf e >4   | <a  f'>2.( | <a  f'>2 ) <f f' >4 |
    <f' a>4.(<f>8) <f a>8(<f>8) | \relative c' <a f' >2 \relative c' <a f'>4  | \relative c' <bf f'>4.( \relative c' <a  f'>8) \relative c' <bf d>8(\relative c' <bf f'>8) |
    \relative c <f f'>2 \relative c' <a f'>4 | \relative c' <d f >2 \relative c' <c  f >8( \relative c' <c  a'>8)  | \relative c' < c  c'>2 \relative c' <c bf' >4  | \relative c' <f a>2.( \relative c' <f a>2 )  \bar "|."
  }
}

Chords = \new ChordNames {
  \chordmode {
    r2 d4 d2. d2. g2. d2. d2. d2. a2. a2. d2. d2. g2. d2. b2.:m a2. d2. d2
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
} { \clef "bass^8" \TBVoice }

\score {
  <<
    \Chords
    \SAVoicePart
    \TBVoicePart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\markup {
  \fill-line {
    {
      \column {
        \left-align {
  	  "3  Now let the house of Aa-ron say,"
	  "     His mer-cy last-eth ev'r."
	  "4  Let those that fear the Lord now say,"
	  "     His mer-cy fail-eth nev'r"
	  "                  ---"
	  "5  I in dis-tress call'd on the Lord;"
  	  "     the Lord did an-swer me:"
  	  "   He in a large place did me set,"
  	  "     from trou-ble made me free."
	  "                  ---"
	  "6  The migh-ty Lord is on my side,"
  	  "     I will not be a-fraid;"
  	  "   For an-y thing that man can do"
  	  "     I shall not be dis-may'd."
	  "                  ---"
	  "   Amen"
        }
      }
    }
  }
}