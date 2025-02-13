\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 33:6-11 - The Psalms of David in Metre, pg 57-58"
  subtitle = "(tune: Amazing Grace - Capo 3)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - February 2025"
  meter = ""
  copyright = "Copyright 2025 - All Rights Reserved"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 6
  THE heav- ens by the word of God
  did their be- gin- ning take;
  And by the breath- ing of his mouth
  he all their hosts did make.
}

versesVoiceTwo = \lyricmode {
  % Verse 7
  The wa- ters of the seas he brings
  to- ge- ther as an heap;
  An in store- hous- es, as it were,
  he lay- eth up the deep.
}

versesVoiceThree = \lyricmode {
  % Verse 8
  Let earth, and all that live there- in,
  with re- v'rence fear the Lord;
  Let all the world's in- hab- i- tants
  dread him with one ac- cord.
}

versesVoiceFour = \lyricmode {
  % Verse 9
  For he did speak the word, and done
  it was with- out de- lay;
  Es- tab- li- shed it firm- ly stood,
  what- e- ver he did say.
}

versesVoiceFive = \lyricmode {
  % Verse 10
  God doth the coun- sel bring to nought
  which heath- en folk do take;
  And what the peo- ple do de- vise
  of none ef- fect doth make.
}

versesVoiceSix = \lyricmode {
  % Verse 11
  O but the coun- sel of the Lord
  doth stand for e- ver sure;
  And of his heart the pur- pos- es
  from age to age en- dure.
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
