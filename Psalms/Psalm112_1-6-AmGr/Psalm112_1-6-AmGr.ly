\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 112:1-6 - The Psalms of David in Metre, pg 238-239"
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
  % Verse 1
  PRAISE ye the Lord. The man is bless'd
  that fears the Lord a- right,
  He who is his com- man- de- ments
  doth great- ly take de- light.
}

versesVoiceTwo = \lyricmode {
  % Verse 2
  His seed and off- spring pow- er- ful
  shall be the earth up- on:
  Of up- right men bless- ed shall be
  the gen- er- a- - tion.
}

versesVoiceThree = \lyricmode {
  % Verse 3
  Rich- es and wealth shall e- ver be
  with- in his house in store;
  And his un- spot- ted right- eous- ness
  en- dures for e- ver- more.
}

versesVoiceFour = \lyricmode {
  % Verse 4
  Un- to the up- right light doth rise,
  though he in dark- ness be:
  Com- pass- ion- ate, and mer- ci- ful,
  and right- e- ous, is he.
}

versesVoiceFive = \lyricmode {
  % Verse 5
  A good man doth his fa- vour shew,
  and doth to oth- ers lend:
  He with dis- cre- tion his af- fairs
  will guide un- to the end.
}

versesVoiceSix = \lyricmode {
  % Verse 6
  Sure- ly there is not an- y thing
  that e- ver shall him move:
  the right- eous man's mem- o- ri- al
  shall e- ver- last- ing prove.
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
