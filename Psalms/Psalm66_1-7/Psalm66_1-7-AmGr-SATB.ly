\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 66:1-7"
  subtitle = "(tune: Amazing Grace - Capo 4)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Feb 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

versesVoice = \lyricmode {
  % Verse 1
  All lands to God in joy- ful sounds,
  a- loft your voi- ces raise.
  Sing forth the hon- our of his name,
  and glor- ious make his praise.
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <a  c  >4 |
    % Verse 1
    <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <bf g' >4  | <a f' >2 <bf d>4 | <a  c>2 <a  c>4 |
    <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <c g' >4   | <c  c'>2.( | <c  c'>2 ) <c a' >4 |
    <c c'>4.(<c a'>8) <c c'>8(<c a'>8) | <c f >2 <c>4  | <bf d>4.(<c  f>8) <bf f'>8(<bf d>8) |
    <a c>2 <c>4 | <a   f' >2 <c  a' >8( <c  f>8)  | < c  a'>2 <bf g' >4  | <c f>2.( <c f>2 )  \bar "|."
  }
}

TBVoice = \relative {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <f  f'  >4 |
    % Verse 1
    <f c'>2 <f  f' >8( <a  f'>8)  | < c  f>2 < c e >4  | <d f >2 <bf f'>4 | <f  f'>2 <f  f'>4 |
    <f   c' >2 <f  f' >8( <a  f'>8)  | < c  f>2 <bf e >4   | <a  f'>2.( | <a  f'>2 ) <f f' >4 |
    <f' a>4.(<f>8) <f a>8(<f>8) | \relative c' <a f' >2 \relative c' <a f'>4  | \relative c' <bf f'>4.( \relative c' <a  f'>8) \relative c' <bf d>8(\relative c' <bf f'>8) |
    \relative c <f f'>2 \relative c' <a f'>4 | \relative c' <d f >2 \relative c' <c  f >8( \relative c' <c  a'>8)  | \relative c' < c  c'>2 \relative c' <c bf' >4  | \relative c' <f a>2.( \relative c' <f a>2 )  \bar "|."
  }
}

Chords = \new ChordNames {
  \chordmode {
    r2 d4 d2. d2. g2. d2. d2. d2. a2. a2. d2. d2. g2. d2. b2.:m a2. d2. d2
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
  	  "3  Say un-to God, How terr-i-ble,"
	  "     in all thy works art thou!"
	  "   Through thy great pow'r thy foes to thee"
	  "     shall be con-strain'd to bow."
	  "                  ---"
	  "4  All on the earth shall wor-ship thee,"
	  "     they shall they praise pro-claim"
  	  "   In songs they shall sing cheer-full-y"
	  "     un-to thy ho-ly name."
	  "                  ---"
	  "5  Come, and the works that God hath wrought"
	  "     with ad-mir-a-tion see:"
	  "   In's work-ing to the sons of men"
	  "     most terr-i-ble is he."
	  "                  ---"
	  "6  In-to dry land the sea he turn'd"
	  "     and they a pass-age had;"
	  "   Ev'n march-ing through the flood on foot,"
	  "     there we in him were glad."
	  "                  ---"
	  "7  He rul-eth e-ver by his pow'r;"
	  "     his eyes the na-tions see:"
	  "   O let not the re-bell-ious ones"
	  "     lift up them-selves on high."
        }
      }
    }
  }
}