\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 145:1-8 -- The Psalms of David in Metre, page 300"
  subtitle = "(tune: Landas - NO CAPO)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - June 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
}

versesVoice = \lyricmode {
  % Verse 1
  I'LL thee ex- tol, my God, O King;
  I'll bless thy name al- ways
  Thee will I bless each day, and will
  thy name for- ev- er praise.
  Great is the Lord, much to be prais'd;
  his great- ness search ex- ceeds.
  Race un- to race shall praise thy works,
  and sew thy might- y deeds.
}

% G major  ^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" }
% C9 major ^\markup { \fret-diagram "6-o;5-3;4-2;3-o;2-3;1-3;" }
% D major  ^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" }

MelodyVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <d >4 |
    % Verse 1
    <d  >8  <e  >8  <d  >4  <g  >4  |
    <fs >8  <e  >8  <e  >4  <e  >4  |
    <c' >8  <a  >8  <g  >4  <fs >4  |
    <g  >2                  <d  >4  |
    <d  >8  <e  >8  <d  >4  <g  >4  |
    <fs >8  <e  >8  <e  >4  <e  >4  |
    <c' >8  <a  >8  <g  >4  <fs >4  |
    <g  >2                  <d  >4  |
    <g  >8  <b  >8  <d  >4  <b  >4  |
    <b  >8  <a  >8  <a  >4  <b  >4  |
    <g  >8  <fs >8  <e  >4  <a  >4  |
    <g  >4         (<fs >4) <d  >4  |
    <d  >8  <e  >8  <d  >4  <g  >4  |
    <fs >8  <e  >8  <e  >4  <e  >4  |
    <c' >8  <a  >8  <g  >4  <fs >4  |
    <g  >2
    \bar "|."
  }
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <b  d >4 |
    % Verse 1
    <b  d  >8  <c  e  >8  <b  d  >4  <b  g' >4  |
    <d  fs >8  <c  e  >8  <c  e  >4  <d  e  >4  |
    <e  c' >8  <e  a  >8  <d  g  >4  <d  fs >4  |
    <d  g  >2                        <b  d  >4  |
    <b  d  >8  <c  e  >8  <b  d  >4  <b  g' >4  |
    <d  fs >8  <c  e  >8  <c  e  >4  <d  e  >4  |
    <e  c' >8  <e  a  >8  <d  g  >4  <d  fs >4  |
    <d  g  >2                        <d     >4  |
    <d  g  >8  <g  b  >8  <g  d' >4  <d  b' >4  |
    <d  b' >8  <d  a' >8  <d  a' >4  <d  b' >4  |
    <d  g  >8  <d  fs >8  <c  e  >4  <e  a  >4  |
    <d  g  >4            (<d  fs >4) <c  d  >4  |
    <b  d  >8  <c  e  >8  <b  d  >4  <b  g' >4  |
    <d  fs >8  <c  e  >8  <c  e  >4  <d  e  >4  |
    <e  c' >8  <e  a  >8  <d  g  >4  <d  fs >4  |
    <d  g  >2
    \bar "|."
  }
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <g  g' >4 |
    % Verse 1
    <g  g' >8  <g  g' >8  <g  g' >4  <g  g' >4  |
    <c  g' >8  <c  g' >8  <c  g' >4  <b  gs'>4  |
    <a  a' >8  <a  c' >8  <d  b' >4  <d  a' >4  |
    <g  b  >2                        <g, g' >4  |
    <g  g' >8  <g  g' >8  <g  g' >4  <g  g' >4  |
    <c  g' >8  <c  g' >8  <c  g' >4  <b  gs'>4  |
    <a  a' >8  <a  c' >8  <d  b' >4  <d  a' >4  |
    <g  b  >2                        <g  b  >4  |
    <g  b  >8  <g  d' >8  <g  b  >4  <g     >4  |
    <d  g  >8  <d  fs >8  <d  fs >4  <g     >4  |
    <b, g' >8  <b  g' >8  <c  g' >4  <c  c' >4  |
    <d  b'  >4           (<d  a' >4) <d  fs >4  |
    <g, g'  >8 <g  g' >8  <g  g' >4  <g  g' >4  |
    <c  g' >8  <c  g' >8  <c  g' >4  <b  gs'>4  |
    <a  a' >8  <a  c' >8  <d  b' >4  <d  c' >4  |
    <g  b  >2
    \bar "|."
  }
}

Chords = \new ChordNames {
  \chordmode {
    r2.
    <g>2. <c>2. <c>2  <d>4 <g>2.
    <g>2. <c>2. <c>2  <d>4 <g>2.
    <g>2. <d>2. <c>2.      <d>2. 
    <g>2. <c>2. <c>2  <d>4 <g>2.
  }
}

MelodyVoicePart = \new Staff \with {
  instrumentName = "Melody"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \MelodyVoice }
\addlyrics { \versesVoice }

%SAVoicePart = \new Staff \with {
%  instrumentName = "SA"
%  midiInstrument = "Voice Oohs"
%} { \clef "treble_8" \SAVoice }
%\addlyrics { \versesVoice }

%TBVoicePart = \new Staff \with {
%  instrumentName = "TB"
%  midiInstrument = "Voice Oohs"
%} { \clef bass \TBVoice }

\score {
  <<
    \Chords
    \MelodyVoicePart    
    % \SAVoicePart
    % \TBVoicePart
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
  	  "5  I of thy glor-ious maj-e-sty"
	  "     the hon-or will re-cord;"
	  "   I'll speak of all thy might-y works,"
	  "     which won-drous are, O Lord."
	  "6  Men of thine acts the might shall show"
  	  "     thine acts that dread-ful are;"
  	  "   And I, thy glo-ry to advance,"
  	  "     thy great-ness will de-clare."
	  "                  ---"
	  "7  The mem-'ry of thy good-ness great"
	  "     they large-ly shall ex-press;"
	  "   With songs of praise they shall extol"
	  "     thy per-fect right-eous-ness."
	  "8  The Lord is ve-ry gra-cious,"
	  "     in him com-pass-ions flow;"
	  "   In mer-cy he is ve-ry great,"
	  "     and is to ang-er slow."
	  "                  ---"
	  "   Amen"
        }
      }
    }
  }
}