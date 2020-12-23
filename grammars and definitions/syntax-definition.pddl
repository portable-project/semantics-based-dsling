
syntax {

	expr: {
		rule;
		isEphemeral: bool;
		canBeEmpty: bool;
		firstWords: string[];

		|quantor {
			min: int;
			max: int;
			expr;
		}
		|sequence  {
			items: expr[];
		}
		|alternatives {
			branches: expr[];
		}
		|check {
			expr;
		}
		|checkNot {
			expr;
		}
		|call {
			targetName: string;
			target: rule;
		}
		|chars {
			string;
		}
		|pattern {
			string;
		}
	};

	scope: {
		name: string;
		rules: rule[];

		|namespace {
			namespaces: namespace[];
		}
		|rule {
			expr;
		}
	};

	/*
	condition: {
		|character {
			value: char;
		}
		|charRange {
			valueFrom: char;
			valueTo: char;
		}
		|charClass {
			kind: {
				|UppercaseLetter
				|LowercaseLetter
				|TitlecaseLetter
				|ModifierLetter
				|OtherLetter
				|NonSpacingMark
				|SpacingCombiningMark
				|EnclosingMark
				|DecimalDigitNumber
				|LetterNumber
				|OtherNumber
				|SpaceSeparator
				|LineSeparator
				|ParagraphSeparator
				|Control
				|Format
				|Surrogate
				|PrivateUse
				|ConnectorPunctuation
				|DashPunctuation
				|OpenPunctuation
				|ClosePunctuation
				|InitialQuotePunctuation
				|FinalQuotePunctuation
				|OtherPunctuation
				|MathSymbol
				|CurrencySymbol
				|ModifierSymbol
				|OtherSymbol
				|OtherNotAssigned
			};
		}
	};
	*/


}
