\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 34:1-10 -- The Psalms of David in Metre, pg 59-60"
  subtitle = "(tune: Evan - Melody Only)"
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
  God will I bless all times; his praise
  my mouth shall still ex- press
  My soul shall boast in God; the meek
  shall hear with joy- ful- ness
}

SoloVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                               <    ef  >2 |
    % Verse 1
    <    ef >4 <    af >4 <    c >2  <    bf >2 | <    af >4 <     f >4 <    ef >2  <    ef >2 |
    <    ef >4 <    af >4 <    c >2  <    af >2 | <    bf >1                        <    df >2 |
    <    c  >4 <    bf >4 <   af >2  <    bf >2 | <    c  >4 <    af >4 <     f >2  <    ef >2 |
    <    ef >4 <    af >4 <   c  >2  <    bf >2 | <    af >1                             \bar "|."
  }
}

SoloVoicePart = \new Staff \with {
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SoloVoice }
\addlyrics { \versesVoice }

\score {
  <<
    \SoloVoicePart
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
	  "3  Ex-tol the Lord with me, let us"
	  "     ex-alt his name to-gether."
	  "4  I sought the Lord, he heard, and did"
	  "     me from all fears de-liver."
	  "                  ---"
	  "5  They look'd to him, and light-en'd were:"
	  "     not sham-ed were their faces."
	  "6  This poor man cry'd, God heard, and sav'd"
	  "     him from all his dis-tresses."
	  "7  The an-gel of the Lord en-camps,"
	  "     and round en-com-pass-eth"
	  "   All those a-bout that do him fear,"
	  "     and them de-li-ver-eth."
	  "                  ---"
	  "8  O taste and see that God is good:"
	  "     who trusts in him is bless'd."
	  "9  Fear God his saints: none that him fear"
	  "     shall be with want op-press'd."
	  "10 The li-ons young may hun-gry be,"
	  "     and they may lack their food:"
	  "   But they that tru-ly seek the Lord"
	  "     shall not lack an-y good."
	  "                  ---"
	  "   A-men"
        }
      }
    }
  }
}