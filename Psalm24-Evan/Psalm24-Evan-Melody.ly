\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 24 -- The Psalms of David in Metre, pages 38-39"
  subtitle = "(tune: Evan - Melody Only)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Nov 2023"
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
  The earth be- longs un- to the Lord,
  and all that it con- tains;
  The world that is in- ha- bi- ted
  and all that there re- mains
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
    ""
    {
      \column {
        \left-align {
  	  "2  For the foundations thereof he on the seas did lay,"
	  "   And he hath it established upon the floods to stay."
	  "                  ---"
	  "3  Who is the man that shall ascend into the hill of God?"
  	  "   Or who within his holy place shall have a firm abode?"
	  "                  ---"
	  "4  Whose hands are clean, whose heart is pure, and unto vanity"
	  "   Who hath not lifted up his soul, nor sworn deceitfully."
	  "                  ---"
	  "5  He from th'Eternal shall receive the blessing him upon,"
	  "   And righteousness, ev'n from the God of his salvation"
	  "                  ---"
	  "6  This is the generation that after him enquire,"
	  "   O Jacob, who do seek thy face with their whole heart's desire."
	  "                  ---"
	  "7  Ye gates, lift up your heads on high; ye doors that last for aye,"
	  "   Be lifted up, that so the King of glory enter may."
	  "                  ---"
	  "8  But who of glory is the King? The mighty Lord is this;"
	  "   Ev'n that same Lord, that great in might and strong in battle is."
	  "                  ---"
	  "9  Ye gates, lift up your heads; ye doors, doors that do last for aye,"
	  "   Be lifted up, that so the King of glory enter may."
	  "                  ---"
	  "10 But who is he that is the King of glory? who is this?"
	  "   The Lord of hosts, and none but he the King of glory is."
        }
      }
    }
    ""
  }
}