/*
* generated by Xtext
*/
grammar InternalReboConf;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package edu.upb.lp.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package edu.upb.lp.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import edu.upb.lp.services.ReboConfGrammarAccess;

}

@parser::members {
 
 	private ReboConfGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(ReboConfGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleConfiguration
entryRuleConfiguration 
:
{ before(grammarAccess.getConfigurationRule()); }
	 ruleConfiguration
{ after(grammarAccess.getConfigurationRule()); } 
	 EOF 
;

// Rule Configuration
ruleConfiguration
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getConfigurationAccess().getGroup()); }
(rule__Configuration__Group__0)
{ after(grammarAccess.getConfigurationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMatrix
entryRuleMatrix 
:
{ before(grammarAccess.getMatrixRule()); }
	 ruleMatrix
{ after(grammarAccess.getMatrixRule()); } 
	 EOF 
;

// Rule Matrix
ruleMatrix
    @init {
		int stackSize = keepStackSize();
    }
	:
(
(
{ before(grammarAccess.getMatrixAccess().getLinesAssignment()); }
(rule__Matrix__LinesAssignment)
{ after(grammarAccess.getMatrixAccess().getLinesAssignment()); }
)
(
{ before(grammarAccess.getMatrixAccess().getLinesAssignment()); }
(rule__Matrix__LinesAssignment)*
{ after(grammarAccess.getMatrixAccess().getLinesAssignment()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleLine
entryRuleLine 
:
{ before(grammarAccess.getLineRule()); }
	 ruleLine
{ after(grammarAccess.getLineRule()); } 
	 EOF 
;

// Rule Line
ruleLine
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getLineAccess().getGroup()); }
(rule__Line__Group__0)
{ after(grammarAccess.getLineAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleElement
entryRuleElement 
:
{ before(grammarAccess.getElementRule()); }
	 ruleElement
{ after(grammarAccess.getElementRule()); } 
	 EOF 
;

// Rule Element
ruleElement
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getElementAccess().getAlternatives()); }
(rule__Element__Alternatives)
{ after(grammarAccess.getElementAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEmpty
entryRuleEmpty 
:
{ before(grammarAccess.getEmptyRule()); }
	 ruleEmpty
{ after(grammarAccess.getEmptyRule()); } 
	 EOF 
;

// Rule Empty
ruleEmpty
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEmptyAccess().getGroup()); }
(rule__Empty__Group__0)
{ after(grammarAccess.getEmptyAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNumber
entryRuleNumber 
:
{ before(grammarAccess.getNumberRule()); }
	 ruleNumber
{ after(grammarAccess.getNumberRule()); } 
	 EOF 
;

// Rule Number
ruleNumber
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNumberAccess().getAlternatives()); }
(rule__Number__Alternatives)
{ after(grammarAccess.getNumberAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePositiveNumber
entryRulePositiveNumber 
:
{ before(grammarAccess.getPositiveNumberRule()); }
	 rulePositiveNumber
{ after(grammarAccess.getPositiveNumberRule()); } 
	 EOF 
;

// Rule PositiveNumber
rulePositiveNumber
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPositiveNumberAccess().getGroup()); }
(rule__PositiveNumber__Group__0)
{ after(grammarAccess.getPositiveNumberAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleInteger
entryRuleInteger 
:
{ before(grammarAccess.getIntegerRule()); }
	 ruleInteger
{ after(grammarAccess.getIntegerRule()); } 
	 EOF 
;

// Rule Integer
ruleInteger
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getIntegerAccess().getValueAssignment()); }
(rule__Integer__ValueAssignment)
{ after(grammarAccess.getIntegerAccess().getValueAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNegativeNumber
entryRuleNegativeNumber 
:
{ before(grammarAccess.getNegativeNumberRule()); }
	 ruleNegativeNumber
{ after(grammarAccess.getNegativeNumberRule()); } 
	 EOF 
;

// Rule NegativeNumber
ruleNegativeNumber
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNegativeNumberAccess().getGroup()); }
(rule__NegativeNumber__Group__0)
{ after(grammarAccess.getNegativeNumberAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNInteger
entryRuleNInteger 
:
{ before(grammarAccess.getNIntegerRule()); }
	 ruleNInteger
{ after(grammarAccess.getNIntegerRule()); } 
	 EOF 
;

// Rule NInteger
ruleNInteger
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNIntegerAccess().getValueAssignment()); }
(rule__NInteger__ValueAssignment)
{ after(grammarAccess.getNIntegerAccess().getValueAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__Configuration__Alternatives_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getGroup_2_0()); }
(rule__Configuration__Group_2_0__0)
{ after(grammarAccess.getConfigurationAccess().getGroup_2_0()); }
)

    |(
{ before(grammarAccess.getConfigurationAccess().getGroup_2_1()); }
(rule__Configuration__Group_2_1__0)
{ after(grammarAccess.getConfigurationAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getElementAccess().getNumberParserRuleCall_0()); }
	ruleNumber
{ after(grammarAccess.getElementAccess().getNumberParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getElementAccess().getEmptyParserRuleCall_1()); }
	ruleEmpty
{ after(grammarAccess.getElementAccess().getEmptyParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Number__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNumberAccess().getPositiveNumberParserRuleCall_0()); }
	rulePositiveNumber
{ after(grammarAccess.getNumberAccess().getPositiveNumberParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getNumberAccess().getNegativeNumberParserRuleCall_1()); }
	ruleNegativeNumber
{ after(grammarAccess.getNumberAccess().getNegativeNumberParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__Configuration__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Configuration__Group__0__Impl
	rule__Configuration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getMatrizInicialKeyword_0()); }

	'Matriz inicial:' 

{ after(grammarAccess.getConfigurationAccess().getMatrizInicialKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Configuration__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Configuration__Group__1__Impl
	rule__Configuration__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getInitialAssignment_1()); }
(rule__Configuration__InitialAssignment_1)
{ after(grammarAccess.getConfigurationAccess().getInitialAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Configuration__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Configuration__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getAlternatives_2()); }
(rule__Configuration__Alternatives_2)?
{ after(grammarAccess.getConfigurationAccess().getAlternatives_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__Configuration__Group_2_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Configuration__Group_2_0__0__Impl
	rule__Configuration__Group_2_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__Group_2_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getMatrizEsperadaKeyword_2_0_0()); }

	'Matriz esperada:' 

{ after(grammarAccess.getConfigurationAccess().getMatrizEsperadaKeyword_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Configuration__Group_2_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Configuration__Group_2_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__Group_2_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getExpectedAssignment_2_0_1()); }
(rule__Configuration__ExpectedAssignment_2_0_1)
{ after(grammarAccess.getConfigurationAccess().getExpectedAssignment_2_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Configuration__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Configuration__Group_2_1__0__Impl
	rule__Configuration__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getCorreoEsperadoKeyword_2_1_0()); }

	'Correo esperado:' 

{ after(grammarAccess.getConfigurationAccess().getCorreoEsperadoKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Configuration__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Configuration__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getMailAssignment_2_1_1()); }
(rule__Configuration__MailAssignment_2_1_1)
{ after(grammarAccess.getConfigurationAccess().getMailAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Line__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Line__Group__0__Impl
	rule__Line__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Line__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLineAccess().getElsAssignment_0()); }
(rule__Line__ElsAssignment_0)
{ after(grammarAccess.getLineAccess().getElsAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Line__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Line__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Line__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLineAccess().getGroup_1()); }
(rule__Line__Group_1__0)*
{ after(grammarAccess.getLineAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Line__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Line__Group_1__0__Impl
	rule__Line__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Line__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLineAccess().getCommaKeyword_1_0()); }

	',' 

{ after(grammarAccess.getLineAccess().getCommaKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Line__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Line__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Line__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLineAccess().getElsAssignment_1_1()); }
(rule__Line__ElsAssignment_1_1)
{ after(grammarAccess.getLineAccess().getElsAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Empty__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Empty__Group__0__Impl
	rule__Empty__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Empty__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEmptyAccess().getEmptyAction_0()); }
(

)
{ after(grammarAccess.getEmptyAccess().getEmptyAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Empty__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Empty__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Empty__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEmptyAccess().get_Keyword_1()); }

	'_' 

{ after(grammarAccess.getEmptyAccess().get_Keyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__PositiveNumber__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PositiveNumber__Group__0__Impl
	rule__PositiveNumber__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PositiveNumber__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPositiveNumberAccess().getIntegerParserRuleCall_0()); }
	ruleInteger
{ after(grammarAccess.getPositiveNumberAccess().getIntegerParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PositiveNumber__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PositiveNumber__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PositiveNumber__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPositiveNumberAccess().getGroup_1()); }
(rule__PositiveNumber__Group_1__0)?
{ after(grammarAccess.getPositiveNumberAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__PositiveNumber__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PositiveNumber__Group_1__0__Impl
	rule__PositiveNumber__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PositiveNumber__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPositiveNumberAccess().getFractionNumeratorAction_1_0()); }
(

)
{ after(grammarAccess.getPositiveNumberAccess().getFractionNumeratorAction_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PositiveNumber__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PositiveNumber__Group_1__1__Impl
	rule__PositiveNumber__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PositiveNumber__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPositiveNumberAccess().getSolidusKeyword_1_1()); }

	'/' 

{ after(grammarAccess.getPositiveNumberAccess().getSolidusKeyword_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PositiveNumber__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PositiveNumber__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PositiveNumber__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPositiveNumberAccess().getDenominatorAssignment_1_2()); }
(rule__PositiveNumber__DenominatorAssignment_1_2)
{ after(grammarAccess.getPositiveNumberAccess().getDenominatorAssignment_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NegativeNumber__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NegativeNumber__Group__0__Impl
	rule__NegativeNumber__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NegativeNumber__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNegativeNumberAccess().getHyphenMinusKeyword_0()); }

	'-' 

{ after(grammarAccess.getNegativeNumberAccess().getHyphenMinusKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NegativeNumber__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NegativeNumber__Group__1__Impl
	rule__NegativeNumber__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NegativeNumber__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNegativeNumberAccess().getNIntegerParserRuleCall_1()); }
	ruleNInteger
{ after(grammarAccess.getNegativeNumberAccess().getNIntegerParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NegativeNumber__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NegativeNumber__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NegativeNumber__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNegativeNumberAccess().getGroup_2()); }
(rule__NegativeNumber__Group_2__0)?
{ after(grammarAccess.getNegativeNumberAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NegativeNumber__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NegativeNumber__Group_2__0__Impl
	rule__NegativeNumber__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NegativeNumber__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNegativeNumberAccess().getNFractionNumeratorAction_2_0()); }
(

)
{ after(grammarAccess.getNegativeNumberAccess().getNFractionNumeratorAction_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NegativeNumber__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NegativeNumber__Group_2__1__Impl
	rule__NegativeNumber__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NegativeNumber__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNegativeNumberAccess().getSolidusKeyword_2_1()); }

	'/' 

{ after(grammarAccess.getNegativeNumberAccess().getSolidusKeyword_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NegativeNumber__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NegativeNumber__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NegativeNumber__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNegativeNumberAccess().getDenominatorAssignment_2_2()); }
(rule__NegativeNumber__DenominatorAssignment_2_2)
{ after(grammarAccess.getNegativeNumberAccess().getDenominatorAssignment_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}









rule__Configuration__InitialAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getInitialMatrixParserRuleCall_1_0()); }
	ruleMatrix{ after(grammarAccess.getConfigurationAccess().getInitialMatrixParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__ExpectedAssignment_2_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getExpectedMatrixParserRuleCall_2_0_1_0()); }
	ruleMatrix{ after(grammarAccess.getConfigurationAccess().getExpectedMatrixParserRuleCall_2_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Configuration__MailAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getConfigurationAccess().getMailNumberParserRuleCall_2_1_1_0()); }
	ruleNumber{ after(grammarAccess.getConfigurationAccess().getMailNumberParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Matrix__LinesAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMatrixAccess().getLinesLineParserRuleCall_0()); }
	ruleLine{ after(grammarAccess.getMatrixAccess().getLinesLineParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Line__ElsAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLineAccess().getElsElementParserRuleCall_0_0()); }
	ruleElement{ after(grammarAccess.getLineAccess().getElsElementParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Line__ElsAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLineAccess().getElsElementParserRuleCall_1_1_0()); }
	ruleElement{ after(grammarAccess.getLineAccess().getElsElementParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PositiveNumber__DenominatorAssignment_1_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPositiveNumberAccess().getDenominatorIntegerParserRuleCall_1_2_0()); }
	ruleInteger{ after(grammarAccess.getPositiveNumberAccess().getDenominatorIntegerParserRuleCall_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Integer__ValueAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIntegerAccess().getValueINTTerminalRuleCall_0()); }
	RULE_INT{ after(grammarAccess.getIntegerAccess().getValueINTTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NegativeNumber__DenominatorAssignment_2_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNegativeNumberAccess().getDenominatorNIntegerParserRuleCall_2_2_0()); }
	ruleNInteger{ after(grammarAccess.getNegativeNumberAccess().getDenominatorNIntegerParserRuleCall_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NInteger__ValueAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNIntegerAccess().getValueINTTerminalRuleCall_0()); }
	RULE_INT{ after(grammarAccess.getNIntegerAccess().getValueINTTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


