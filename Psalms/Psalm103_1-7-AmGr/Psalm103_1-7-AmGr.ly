\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 103:1-7 -- The Psalms of David in Metre, page 210"
  subtitle = "(tune: Amazing Grace - Capo 3)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Dec 2025"
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
  O THOU my soul, bless God the Lord;
  and all that in me is
  Be stir- red up his ho- ly name
  to mag- ni- fy and bless
}

versesVoiceTwo = \lyricmode {
  % Verse 2
  Bless, O my soul, the Lord thy God,
  and not for- get- ful be
  Of all his gra- cious ben- e- fits
  he hath be- stowed on thee.
}

versesVoiceThree = \lyricmode {
  % Verse 3
  All thine in- i- qui- ties who doth
  most gra- cious- ly for- give:
  Who thy dis- eas- es all and pains
  doth heal, and thee re- lieve.
}

versesVoiceFour = \lyricmode {
  % Verse 4
  Who doth re- deem thy life, that thou
  to death may'st not go down;
  Who thee with lov- ing- kind- ness doth
  and ten- der mer- cies crown:
}

versesVoiceFive = \lyricmode {
  % Verse 5
  Who with a- bun- dance of good things
  doth sa- tis- fy thy mouth;
  So that, ev'n as the eag- le's age,
  re- new- ed is thy youth.
}

versesVoiceSix = \lyricmode {
  % Verse 6-7
  God right- eous judge- ment ex- e- cutes
  for all op- press- ed ones.
  His ways to Mo- ses, he his acts
  made known to Is- r'el's sons.
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
