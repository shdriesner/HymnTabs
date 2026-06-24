\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 145:1-7 - The Psalms of David in Metre, pg 300"
  subtitle = "(tune: Amazing Grace - Capo 3)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - June 2026"
  meter = ""
  copyright = "Copyright 2026 - All Rights Reserved"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 1-2
  I'LL thee ex- tol, my God, O King;
  I'll bless thy name al- ways
  Thee will I bless each day, and will
  thy name for- ev- er praise.
}

versesVoiceTwo = \lyricmode {
  % Verse 3-4
  Great is the Lord, much to be prais'd;
  his great- ness search ex- ceeds.
  Race un- to race shall praise thy works,
  and shew thy might- y deeds.
}

versesVoiceThree = \lyricmode {
  % Verse 5
  I of thy glor- ious maj- e- sty
  the hon- our will re- cord;
  I'll speak of all thy migh- ty works,
  which won- drous are, O Lord.
}

versesVoiceFour = \lyricmode {
  % Verse 6
  Men of thine acts the might shall show
  thine acts that dread- ful are;
  And I, thy glo- ry to ad- vance,
  thy great- ness will de- clare.
}

versesVoiceFive = \lyricmode {
  % Verse 7
  The mem- 'ry of thy good- ness great
  they large- ly shall ex- press;
  With songs of praise they shall ex- tol
  thy per- fect right- eous- ness.
  A- men.
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2
    \repeat volta 2
    {
      <a  c  >4 |
      % Verse 1
      <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <bf g' >4  | <a f' >2 <bf d>4 | <a  c>2 <a  c>4 |
      <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <c g' >4   | <c  c'>2.( | <c  c'>2 ) <c a' >4 |
      <c c'>4.(<c a'>8) <c c'>8(<c a'>8) | <c f >2 <c>4  | <bf d>4.(<c  f>8) <bf f'>8(<bf d>8) |
      <a c>2 <c>4 | <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <bf g' >4  | <c f>2.( <c f>2 )
    }
  }
  r4 <d  f  >2. <c  f  >2.
  \bar "|."
}

TBVoice = \relative {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2
    \repeat volta 2
    {
      <f  f'  >4 |
      % Verse 1
      <f c'>2 <f  f' >8( <a  f'>8)  | < c  f>2 < c e >4  | <d f >2 <bf f'>4 | <f  f'>2 <f  f'>4 |
      <f   c' >2 <f  f' >8( <a  f'>8)  | < c  f>2 <bf e >4   | <a  f'>2.( | <a  f'>2 ) <f f' >4 |
      <f' a>4.(<f>8) <f a>8(<f>8) | \relative c' <a f' >2 \relative c' <a f'>4  | \relative c' <bf f'>4.( \relative c' <a  f'>8) \relative c' <bf d>8(\relative c' <bf f'>8) |
      \relative c <f f'>2 \relative c' <a f'>4 | \relative c' <d f >2 \relative c' <c  f >8( \relative c' <c  a'>8)  | \relative c' < c  c'>2 \relative c' <c bf' >4  | \relative c' <f a>2.( \relative c' <f a>2 )
    }
  }
  r4 <bf,  bf'  >2. <f'  a  >2.
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r2 <f>4 <f>2. <f>2. <bf>2. <f>2.
    <f>2. <f>2. <c>2. <c>2.
    <f>2. <f>2. <bf>2. <f>2.
    d2.:m <c>2. <f>2. <f>2
    r4 <bf>2. <f>2.
  }
}

SAVoicePart = \new Staff \with {
  instrumentName = "SA"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SAVoice }
\addlyrics { \versesVoiceOne }
\addlyrics { \versesVoiceTwo }
\addlyrics { \versesVoiceThree }
\addlyrics { \versesVoiceFour }
\addlyrics { \versesVoiceFive }

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
	" Guitar w/Capo 3:"
	" F    => D"
	" Bb  => G"
	" C    => A"
	" Dm => Bm"
        }
      }
    }
  }
}
