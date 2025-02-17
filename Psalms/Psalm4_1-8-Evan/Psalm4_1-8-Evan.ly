\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 4:1-8 -- The Psalms of David in Metre, pg. 3-4"
  subtitle = "(tune: Evan - capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - October 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoiceOne = \lyricmode {
  % Verse 1
  GIVE ear un- to me when I call,
  God of my right- eous- ness;
  Have mer- cy, hear my pray'r; thou hast
  en- larg'd me in dist- ress.
}

versesVoiceTwo = \lyricmode {
  % Verse 2
  O ye the sons of men! how long
  will ye love van- i- ties?
  How long my glo- ry turn to shame,
  and will ye fol- low lies?
}

versesVoiceThree = \lyricmode {
  % Verse 3
  But know, that for him- self the Lord
  the god- ly man doth chuse:
  The Lord, when I on him do call,
  to hear will not re- fuse.
}

versesVoiceFour = \lyricmode {
  % Verses 4-5
  Fear, and sin not; talk with your heart
  on bed, and si- lent be.
  Of- f'rings pre- sent of right- eous- ness,
  and in the Lord trust ye.
}

versesVoiceFive = \lyricmode {
  % Verse 6
  O who will shew us an- y good?
  is that which man- y say:
  But of thy count- en- ance the light,
  Lord, lift on us al- way.
}

versesVoiceSix = \lyricmode {
  % Verse 7
  Up- on my heart, be- stow'd by thee,
  more glad- ness I have found
  Than they, ev'n then, when corn and wine
  did most with them a- bound.
}

versesVoiceSeven = \lyricmode {
  % Verse 8
  I will both lay me down in peace,
  and qui- et sleep will take;
  Be- cause thou on- ly me to dwell
  in safe- ty, Lord, dost make.
  A- men.
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1
    \repeat volta 2
    {
      <ef  c  >2 |
      <c   ef >4 <c   af'>4 <ef  c'>2  <df  bf'>2 | < c  af'>4 <df   f >4 < c  ef >2  < c  ef >2 |
      <c   ef >4 <c   af'>4 <c   c'>2  < c  af'>2 | <ef  bf'>1                        <ef  df'>2 |
      <ef  c '>4 <df  bf'>4 <c  af'>2  <ef  bf'>2 | <ef  c '>4 <ef  af >4 <df   f >2  <bf  ef >2 |
      <c   ef >4 <c   af'>4 <ef c '>2  <df  bf'>2 | <c   af'>1
      r2
    }
  }
  <df  af' >1. <c  af' >1.
  \bar "|."
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1
    \repeat volta 2
    {
      <af  af'>2 |
      <af  af'>4 <af  af'>4 <af  af'>2  <ef' g  >2 | <f   af >4 <df  af'>4 <af  af'>2 <af  af'>2 |
      <af  af'>4 <    af'>4 <f   af >2  <f   af >2 | <ef  g  >1                       <g   bf >2 |
      <    af >4 <ef  g  >4 <f   af >2  <ef  g  >2 | <    af >4 <c , af'>4 <df  af'>2 <ef  g  >2 |
      <af, af'>4 <f ' af >4 <ef  af >2  <ef  g  >2 | <af, af'>1
      r2
    }
  }
  <df  f  >1. <af  ef' >1.
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r1 <g>2 <g>1. <c>1. <g>1. <d>1. <g>1. <c>1 <g>2 <g>1 <d>2 <g>1. <c>1. <g>1.
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
\addlyrics { \versesVoiceSeven }

TBVoicePart = \new Staff \with {
  instrumentName = "TB"
  midiInstrument = "Voice Oohs"
} { \clef bass \TBVoice }

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
      tempoWholesPerMinute = #(ly:make-moment 100 2)
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