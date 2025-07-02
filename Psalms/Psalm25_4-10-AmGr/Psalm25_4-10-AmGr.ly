\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 25:4-10 -- The Psalms of David in Metre, page 39-40"
  subtitle = "(tune: Amazing Grace, Piano: Key of F, Guitar: Capo 3)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Jul 2025"
  meter = ""
  copyright = "Copyright 2025 - All Rights Reserved"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 4-5a
  Shew me thy ways, O Lord;
  thy paths, O teach thou me:
  And do thou lead me in thy truth,
  there- in my tea- cher be:
}

versesVoiceTwo = \lyricmode {
  % Verse 5b
  For thou art God that dost
  to me sal- va- tion send,
  And I up- on thee all the day
  ex- pect- ing do at- tend.
}

versesVoiceThree = \lyricmode {
  % Verse 6
  Thy ten- der mer- cies, Lord,
  I pray thee to re- memb'r,
  And lov- ing- kind- ness- es; for they
  have been of old for- ev'r.
}

versesVoiceFour = \lyricmode {
  % Verse 7
  My sins and faults of youth
  do thou, O Lord, for- get:
  Af- ter thy mer- cy think on me,
  and for thy good- ness great.
}

versesVoiceFive = \lyricmode {
  % Verse 8-9
  God good and up- right is:
  the way he'll sin- ners show.
  The meek in judge- ment he will guide,
  and make his path to know.
}

versesVoiceSix = \lyricmode {
  % Verse 10
  The whole paths of the Lord
  are truth and mer- cy sure,
  To those that do his cov'- nant keep,
  and tes- ti- mon- ies pure.
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
      <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <bf g' >4  | <a f' >2( <bf d>4 | <a  c>2) <a  c>4 |
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
      <f c'>2 <f  f' >8( <a  f'>8)  | < c  f>2 < c e >4  | <d f >2( <bf f'>4 | <f  f'>2) <f  f'>4 |
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
    r2 <d>4 <d>2. <d>2. <g>2. <d>2.
    <d>2. <d>2. <a>2. <a>2.
    <d>2. <d>2. <g>2. <d>2.
    b2.:m <a>2. <d>2. <d>2
    r4 <g>2. <d>2.
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
