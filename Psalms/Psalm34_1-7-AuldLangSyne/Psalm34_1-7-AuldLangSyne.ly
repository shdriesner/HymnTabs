\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 34:1-7 - The Psalms of David in Metre, pg 59"
  subtitle = "(tune: Auld Lang Syne - No Capo = Key of F, Capo 3 = Key of D)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed: Stefan Driesner - December 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
}

versesVoiceOne = \lyricmode {
  % Verses 1-4
  God will I bless all times; his praise
  my mouth shall still ex- press
  My soul shall boast in God; the meek
  shall hear with joy- ful- ness
  Ex- tol the Lord with me, let us
  ex- alt his name to- geth'r.
  I sought the Lord, he heard, and did
  me from all fears de- liv'r.
}

versesVoiceTwo = \lyricmode {
  % Verses 5-7
  They look'd to him, and light- en'd were:
  not sham- ed were their faces.
  This poor man cry'd, God heard, and sav'd
  him from all his dis- tresses.
  The an- gel of the Lord en- camps,
  and round en- com- pass- eth
  All those a- bout that do him fear,
  and them de- li- ver- eth.
  A- men
}

% G major  ^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" }
% C9 major ^\markup { \fret-diagram "6-o;5-3;4-2;3-o;2-3;1-3;" }
% D major  ^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" }

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2.
    \repeat volta 2
    {
      <c      >4 |
      <c  f   >4. <c  f  >8 <c  f  >4 <f  a  >4 |
      <e  g   >4. <d  f  >8 <e  g  >4 <e  a  >4 |
      <f      >4. <f     >8 <f  a  >4 <f  c' >4 |
      <f  d'  >2.                     <f  d' >4 |
      
      <f  c'  >4. <f  a  >8 <f  a  >4 <f     >4 |
      <e  g   >4. <d  f  >8 <e  g  >4 <e  a  >4 |
      <d  f   >4. <d  a  >8 <d  bf >4 <c  bf >4 |
      <f  a,  >2.                     <f  d' >4 |
      
      <f  c'  >4. <f  a  >8 <f  a  >4 <f     >4 |
      <e  g   >4. <d  f  >8 <e  g  >4 <e  d' >4 |
      <f  c'  >4. <f  a  >8 <f  a  >4 <f  c' >4 |
      <f  d'  >2.                     <f  f' >4 |
      
      <f  c'  >4. <f  a  >8 <f  a  >4 <f  c  >4 |
      <e  g   >4. <d  f  >8 <e  g  >4 <e  a  >8 (<e  g  >8) |
      <d  f   >4. <d  a  >8 <d  bf >4 <c  bf >4 |
      <f  a,  >2.
    }
    r4
  }
  <f  d  >1 <f  c  >1
  \bar "|."
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2.
    \repeat volta 2
    {
      <c'     >4 |
      <f,  a  >4. <g  bf >8 <a     >4 <f   c' >4 |
      <c   c' >4. <c  a' >8 <c  bf'>4 <c   c' >4 |
      <f   a  >4. <f  a  >8 <f  c' >4 <f   a  >4 |
      <bf     >2.                     <bf     >4 |

      <a   c  >4. <f  c' >8 <f  c' >4 <f   a  >4 |
      <c   c' >4. <c  a' >8 <c  bf'>4 <c   c' >4 |
      <d   a' >4. <d  f  >8 <bf f' >4 <c   e  >4 |
      <f,  f' >2.                     <f'  bf >4 |
      
      <f   a  >4. <f  c' >8 <f  c' >4 <a,  c' >4 |
      <c   c' >4. <c  a' >8 <c  bf'>4 <c   bf'>4 |
      <f   a  >4. <f  c' >8 <f  c' >4 <f   a  >4 |
      <bf     >2.                     <bf  d  >4 |
      
      <a   c  >4. <f  c' >8 <f   c' >4 <a,  f' >4 |
      <c   c' >4. <c  c' >8 <c   c' >4 <cs  a' >4 |
      <d   a' >4. <d  f  >8 <bf  f' >4 <c   e  >4 |
      <f,  f' >2.
    }
    r4    
  }
  <bf  bf' >1 <f  a' >1
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r2.   <f>4
    <f>1  <c>1  <f>1  <b>1
    <f>1  <c>1  <b>1  <f>1
    <f>1  <c>1  <f>1  <b>1
    <f>1  <c>1  <b>1  <f>1
    <b>1  <f>1
  }
}

SAVoicePart = \new Staff \with {
  instrumentName = "SA"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SAVoice }

\addlyrics { \versesVoiceOne }
\addlyrics { \versesVoiceTwo }

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

\markup {
  \fill-line {
    {
      \column {
        \left-align {
	" Guitar w/Capo 3:"
	" F  => D"
	" C  => A"
	" B  => G"
        }
      }
    }
  }
}
