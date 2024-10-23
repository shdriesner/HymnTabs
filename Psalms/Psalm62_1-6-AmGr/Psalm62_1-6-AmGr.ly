\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 62:1-6 - The Psalms of David in Metre, pg 118-119"
  subtitle = "(tune: Amazing Grace - Capo 3)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - October 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 1
  MY soul with ex- pec- ta- ti- on
  de- pends on God in- deed;
  My strength and my sal- va- tion doth
  from him a- lone pro- ceed.
}

versesVoiceTwo = \lyricmode {
  % Verse 2
  He on- ly my sal- va- tion is,
  and my strong rock is he:
  He on- ly is my sure de- fence;
  much mov'd I shall not be.
}

versesVoiceThree = \lyricmode {
  % Verse 3
  How long will ye a- gainst a man
  plot mis- chief? ye shall all
  Be slain; ye as a tott- 'ring fence
  shall be, and bow- ing wall.
}

versesVoiceFour = \lyricmode {
  % Verse 4
  They on- ly plot to cast him down
  from His ex- cel- len- cy:
  They joy in lies; with mouth they bless,
  but they curse in- ward- ly.
}

versesVoiceFive = \lyricmode {
  % Verse 5
  My soul, wait thou with pa- ti- ence
  up- on my God a- lone;
  On him de- pend- eth all my hope
  and ex- pec- ta- ti- on.
}

versesVoiceSix = \lyricmode {
  % Verse 6
  He on- ly my sal- va- tion is,
  and my strong rock is he;
  He on- ly is my sure de- fence:
  I shall not mo- ved be.
  A- men  
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
    r4
  }
  <d  f  >2. <c  f  >2.
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
      <f c'>2 <f  f' >8( <a  f'>8)  | < c  f>2 < c e >4  | <d f >2 <bf f'>4 | <f  f'>2 <f  f'>4 |
      <f   c' >2 <f  f' >8( <a  f'>8)  | < c  f>2 <bf e >4   | <a  f'>2.( | <a  f'>2 ) <f f' >4 |
      <f' a>4.(<f>8) <f a>8(<f>8) | \relative c' <a f' >2 \relative c' <a f'>4  | \relative c' <bf f'>4.( \relative c' <a  f'>8) \relative c' <bf d>8(\relative c' <bf f'>8) |
      \relative c <f f'>2 \relative c' <a f'>4 | \relative c' <d f >2 \relative c' <c  f >8( \relative c' <c  a'>8)  | \relative c' < c  c'>2 \relative c' <c bf' >4  | \relative c' <f a>2.( \relative c' <f a>2 )  \bar "|."
    }
    r4
  }
  <bf,  bf'  >2. <f  a'  >2.
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r2
    <d>4    <d>2. <d>2. <g>2.   <d>2.
    <d>2.   <d>2. <a>2. <a>2.   <d>2.
    <d>2.   <g>2. <d>2.
    b2.:m <a>2. <d>2. <d>2
    r4
    <g>2.  <d>2.
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
\addlyrics { \versesVoiceSix }

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

%\markup {
%  \fill-line {
%    {
%      \column {
%        \left-align {
%        }
%      }
%    }
%  }
%}