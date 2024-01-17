\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 46"
  subtitle = "(tune: Evan - Capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Jan 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoice = \lyricmode {
  % Verse 1
  GOD is our ref- uge and our strength,
  in straits a pre- sent aid;
  There- fore, al- though the earth re- move,
  we will not be a- fraid:
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
  	  "   Though hills a-midst the seas be cast; though wat-ers roar-ing make,"
	  "   And troub-led be; yea though the hills by swell-ing seas do shake."
	  "                  ---"
	  "4  A riv-er is, whose streams do glad the ci-ty of our God;"
  	  "   The ho-ly place, where-in the Lord most high hath his a-bode."
	  "                  ---"
	  "5  God in the midst of her doth dwell; noth-ing shall her re-move:"
	  "   The Lord to her an help-er will, and that right ear-ly, prove."
	  "                  ---"
	  "6  The heath-en rag'd tum-ul-tuous-ly, the king-doms mov-ed were:"
	  "   The Lord God ut-ter-ed his voice, the earth did melt for fear."
	  "                  ---"
	  "7  The Lord of hosts up-on our side doth con-stant-ly re-main:"
	  "   The God of Ja-cob's our ref-uge, us safe-ly to main-tain."
	  "                  ---"
	  "8  Come and be-hold what won-drous works have by the Lord been wrought;"
	  "   Come, see what des-o-la-tions he on the earth hath brought."
	  "                  ---"
	  "9  Un-to the ends of all the earth wars in-to peace he turns:"
	  "   The bow he breaks, the spear he cuts, in fire the char-iot burns."
	  "                  ---"
	  "10 Be still, and know that I am God; a-mong the heath-en I"
	  "   Wil be ex-alt-ed; I on earth will be ex-alt-ed high."
	  "                  ---"
	  "11 Our God, who is the Lord of hosts, is still upon our side;"
	  "   The God of Ja-cob our re-fuge for e-ver will a-bide."
        }
      }
    }
  }
}