\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 51:1-7 - The Psalms of David in Metre, pg 101-102"
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
  AF- TER thy lov- ing- kind- ness, Lord,
  have mer- cy up- on me:
  For thy com- pass- ions great, blot out
  all mine in- i- qui- ty.
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
  	  "2  Me cleanse from sin, and through-ly wash"
	  "     from mine in-i-qui-ty:"
	  "3  For my trans-gress-ions I con-fess;"
	  "     my sin I ev-er see."
	  "                  ---"
	  "4  'Gainst thee, thee on-ly, have I sinn'd,"
  	  "     in thy sight done this ill;"
  	  "   That when thou speak'st thou may'st be just,"
  	  "     and clear in judg-ing still."
	  "                  ---"
	  "5  Be-hold, I in in-i-qui-ty"
  	  "     was form'd the womb with-in;"
  	  "   My moth-er al-so me con-ceiv'd"
  	  "     in guilt-i-ness and sin."
	  "                  ---"
	  "6  Be-hold, thou in the in-ward parts"
  	  "     with truth de-light-ed art;"
  	  "   And wis-dom thou shalt make me know"
  	  "     with-in the hid-den part."
	  "                  ---"
	  "7  Do thou with hys-sop sprin-kle me,"
  	  "     I shall be cleans-ed so;"
  	  "   Yea, wash thou me, and then I shall"
  	  "     be whi-ter than the snow."
	  "                  ---"
	  "   Amen"
        }
      }
    }
  }
}