\version "2.12.3"

\header{
	tagline = ""
}


Intro = \relative c'' {
	\autoBeamOff
	% \cadenzaOn
	d8 c[ b] a a4 r4 \bar "|"
	a1 b8 c[ b] a g g2
	\bar "|."
}

Couplets = \relative c'' {
	\autoBeamOff
	b1 d8 c b a4 r4 \bar "|"
	a1 b8 c[ b] a g2
	\bar "|."
}

Soprano = \relative c'' {
	\autoBeamOff
	d1 b4 e d d2
	\bar "|"
	c1 d8 e[ d] d4 b2
	\bar "|."
}

Alto = \relative c'' {
	\autoBeamOff
	g1 g4 g g fis2
	\bar "|"
	fis1 g8 g4 fis g2
}

Tenor = \relative c' {
	\autoBeamOff
	b1 d4 c b a2
	\bar "|"
	a1 b8 c[ b] a4 d2
}

Basse = \relative c' {
	\autoBeamOff
	g1 g4 c,4 g' d2
	\bar "|"
	a1 g8 c4 d g2
}

VersetA = \lyricmode {
	\set stanza = "1. " Ma -- gní -- fi -- cat_* ánima me -- a Dó -- mi -- num.
}

VersetB = \lyricmode {
	\set stanza = " 2. " Et_exsultávit_' spíri -- tus me -- us_*
	In_Deo_salu -- tá -- ri me -- o.
}

VersetD= \lyricmode {
	\set stanza = " 4. " Quia_fecit_mihi_magna_' qui pot -- ens est_*
	Et_sanctum no -- men e -- ius.
}

VersetC = \lyricmode {
	\set stanza = "3. " Quia_respéxit_humilitátem_an -- cíl -- læ su -- æ_:_*
	Ecce_enim_ex_hoc_beátam_me_dicent_'_omnes_gene -- ra -- ti -- ó -- nes.
}


\score {
	\new ChoirStaff
	<<
	\new Staff {
	\cadenzaOn
		<<
		\set Staff.midiInstrument = "flute"
		\clef treble
		\key g\major
		{
			\new Voice = "soprano" {
				\voiceOne
				\Soprano
			}
		}
		\new Voice = "alto" {
			\voiceTwo
			\Alto
		}
		>>
	}
	\new Lyrics \lyricsto soprano {
		\VersetB
	}
	\new Staff {
		<<
		\set Staff.midiInstrument = "flute"
		\clef bass
		\key g\major
		\new Voice = "tenor" {
			\voiceOne
			\Tenor
		}          
		\new Voice = "basse" {
			\voiceTwo
			\Basse
		}
		>>
	}
	>>
	\layout{ragged-right=##f}
	\midi{}
}
