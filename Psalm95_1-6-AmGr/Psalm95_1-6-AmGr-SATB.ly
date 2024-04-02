\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 95:1-6 - The Psalms of David in Metre, pg 195"
  subtitle = "(tune: Amazing Grace - Capo 3)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Apr 2024"
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
  O COME, let us sing to the Lord:
  come, let us ev'- ry one
  A joy- ful noise make to the Rock
  of our sal- va- - tion
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
  	  "2  Let us be-fore his pre-sence come"
	  "     with praise and thank-ful voice;"
	  "   Let us sing psalms to him with grace,"
	  "     and make a joy-ful noise."
	  "                  ---"
	  "3  For God, a great God, and great King,"
  	  "     a-bove all gods he is."
  	  "4  Depths of the earth are in his hand,"
  	  "     the strength of hills is his."
	  "                  ---"
	  "5  To him the spac-ious sea be-longs,"
  	  "     for he the same did make;"
  	  "   The dry land al-so from his hands"
  	  "     its form at first did take."
	  "                  ---"
	  "6  O come, and let us wor-ship him,"
  	  "     let us bow down with-al,"
  	  "   And on our knees be-fore the Lord"
  	  "     our Mak-er let us fall."
	  "                  ---"
	  "   Amen"
        }
      }
    }
  }
}