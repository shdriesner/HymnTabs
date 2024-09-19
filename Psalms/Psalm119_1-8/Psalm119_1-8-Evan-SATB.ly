\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 119:1-8 -- The Psalms of David in Metre, pg 247-248"
  subtitle = "(tune: Evan - Capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Dec 2023"
  meter = ""
  copyright = "Copyright 2023 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoice = \lyricmode {
  % Verse 1
  Bless- ed are they that un- de- fil'd
  and straight are in the way;
  Who in the Lord's most ho- ly law
  do walk, and do not stray.
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                               <ef  c  >2^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" } |
    % Verse 1
    <c   ef >4 <c   af'>4 <ef  c'>2  <df  bf'>2 | < c  af'>4^\markup { \fret-diagram "6-x;5-3;4-2;3-o;2-3;1-3;" } <df   f >4 < c  ef >2  < c  ef >2 |
    <c   ef >4^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" } <c   af'>4 <c   c'>2  < c  af'>2 | <ef  bf'>1^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" }                        <ef  df'>2 |
    <ef  c '>4^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" } <df  bf'>4 <c  af'>2  <ef  bf'>2 | <ef  c '>4^\markup { \fret-diagram "6-x;5-3;4-2;3-o;2-3;1-3;" } <ef  af >4 <df   f >2  <bf  ef >2^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" } |
    <c   ef >4 <c   af'>4 <ef c '>2  <df  bf'>2^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" } | <c   af'>1^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" }                             \bar "|."
  }
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                                <af  af'>2 |
    % Verse 1
    <af  af'>4 <af  af'>4 <af  af'>2  <ef' g  >2 | <f   af >4 <df  af'>4 <af  af'>2 <af  af'>2 |
    <af  af'>4 <    af'>4 <f   af >2  <f   af >2 | <ef  g  >1                       <g   bf >2 |
    <    af >4 <ef  g  >4 <f   af >2  <ef  g  >2 | <    af >4 <c , af'>4 <df  af'>2 <ef  g  >2 |
    <af, af'>4 <f ' af >4 <ef  af >2  <ef  g  >2 | <af, af'>1                          \bar "|."
  }
}

Chords = \new ChordNames {
  \chordmode {
    r1 <g>2 <g>1. <c>1. <g>1. <d>1. <g>1. <c>1 <g>2 <g>1 <d>2 <g>1.
  }
}

SAVoicePart = \new Staff \with {
  instrumentName = "SA"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SAVoice }
\addlyrics { \versesVoice }

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
	  "2  Bless-ed are they who to ob-serve"
	  "     his stat-utes are in-clin'd;"
	  "   And who do seek the liv-ing God"
	  "     with their whole heart and mind."
	  "                  ---"
	  "3  Such in his ways do walk, and they"
	  "     do no in-i-qui-ty."
	  "4  Thou hast com-mand-ed us to keep"
	  "     thy pre-cepts care-ful-ly."
	  "                  ---"
	  "5  O that thy stat-utes to ob-serve"
	  "     thou would'st my ways di-rect!"
	  "6  Then shall I not be sham'd, when I"
	  "     thy pre-cepts all re-spect."
	  "                  ---"
	  "7  Then with in-teg-ri-ty of heart"
	  "     thee will I praise and bless,"
	  "   When I the judge-ments all have learn'd"
	  "     of thy pure right-eous-ness."
	  "                  ---"
	  "8  That I will keep thy stat-utes all"
	  "     firm-ly re-solv'd have I:"
	  "   O do not then, most gra-cious God,"
	  "     for-sake me ut-ter-ly."
	  "                  ---"
	  "   A-men"
        }
      }
    }
  }
}