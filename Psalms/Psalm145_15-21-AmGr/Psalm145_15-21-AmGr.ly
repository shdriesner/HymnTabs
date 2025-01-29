\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 145:15-21 - The Psalms of David in Metre, pg 301-302"
  subtitle = "(tune: Amazing Grace - Capo 3)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - January 2025"
  meter = ""
  copyright = "Copyright 2025 - All Rights Reserved"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 15
  The eyes of all things wait on thee,
  the giv- er of all good;
  And thou, in time con- ve- ni- ent,
  be- stow'st on them their food:
}

versesVoiceTwo = \lyricmode {
  % Verse 16
  Thine hand thou op- en'st lib- 'ral- ly,
  and of thy boun- ty gives
  E- nough to sa- tis- fy the need
  of ev- 'ry thing that lives.
}

versesVoiceThree = \lyricmode {
  % Verse 17-18
  The Lord is just in all his ways,
  ho- ly in his works all.
  God's near to all that call on him,
  in truth that on him call.
}

versesVoiceFour = \lyricmode {
  % Verse 19
  He will ac- com- plish the de- sire
  of those that do him fear:
  He al- so will de- li- ver them
  and he their cry will hear.
}

versesVoiceFive = \lyricmode {
  % Verse 20
  The Lord pre- serves all who him love,
  that nought can them an- noy:
  But he all those who wick- ed are
  will ut- ter- ly de- stroy.
}

versesVoiceSix = \lyricmode {
  % Verse 21
  My mouth the prai- ses of the Lord
  to pub- lish cease shall nev'r:
  Let all flesh bless his ho- ly name
  for- e- ver and for- ev'r.
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

%Chords = \new ChordNames {
%  \chordmode {
%    r2 <d>4 <d>2. <d>2. <g>2. <d>2.
%    <d>2. <d>2. <a>2. <a>2.
%    <d>2. <d>2. <g>2. <d>2.
%    b2.:m <a>2. <d>2. <d>2
%    r4 <g>2. <d>2.
%  }
%}

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
