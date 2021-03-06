/*
 * generated by Xtext
 */
grammar InternalMyDsl;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.xtext.example.mydsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

}

@parser::members {

 	private MyDslGrammarAccess grammarAccess;
 	
    public InternalMyDslParser(TokenStream input, MyDslGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Model";	
   	}
   	
   	@Override
   	protected MyDslGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	 iv_ruleModel=ruleModel 
	 { $current=$iv_ruleModel.current; } 
	 EOF 
;

// Rule Model
ruleModel returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getModelAccess().getTypesTypeParserRuleCall_0()); 
	    }
		lv_types_0_0=ruleType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModelRule());
	        }
       		add(
       			$current, 
       			"types",
        		lv_types_0_0, 
        		"Type");
	        afterParserOrEnumRuleCall();
	    }

)
)*
;





// Entry rule entryRuleType
entryRuleType returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTypeRule()); }
	 iv_ruleType=ruleType 
	 { $current=$iv_ruleType.current; } 
	 EOF 
;

// Rule Type
ruleType returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getTypeAccess().getTypeDefParserRuleCall_0()); 
    }
    this_TypeDef_0=ruleTypeDef
    { 
        $current = $this_TypeDef_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getTypeAccess().getInterfaceParserRuleCall_1()); 
    }
    this_Interface_1=ruleInterface
    { 
        $current = $this_Interface_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getTypeAccess().getAttributeParserRuleCall_2()); 
    }
    this_Attribute_2=ruleAttribute
    { 
        $current = $this_Attribute_2.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleTypeDef
entryRuleTypeDef returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTypeDefRule()); }
	 iv_ruleTypeDef=ruleTypeDef 
	 { $current=$iv_ruleTypeDef.current; } 
	 EOF 
;

// Rule TypeDef
ruleTypeDef returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='typedef' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getTypeDefAccess().getTypedefKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getTypeDefAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTypeDefRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)(	otherlv_2='mapsto' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getTypeDefAccess().getMapstoKeyword_2_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getTypeDefAccess().getMappedTypeJAVAIDParserRuleCall_2_1_0()); 
	    }
		lv_mappedType_3_0=ruleJAVAID		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getTypeDefRule());
	        }
       		set(
       			$current, 
       			"mappedType",
        		lv_mappedType_3_0, 
        		"JAVAID");
	        afterParserOrEnumRuleCall();
	    }

)
))?)
;





// Entry rule entryRuleJAVAID
entryRuleJAVAID returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getJAVAIDRule()); }
	 iv_ruleJAVAID=ruleJAVAID 
	 { $current=$iv_ruleJAVAID.current; } 
	 EOF 
;

// Rule JAVAID
ruleJAVAID returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_name_0_0=RULE_ID
		{
			newLeafNode(lv_name_0_0, grammarAccess.getJAVAIDAccess().getNameIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getJAVAIDRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"ID");
	    }

)
)(	otherlv_1='.' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getJAVAIDAccess().getFullStopKeyword_1_0());
    }
this_ID_2=RULE_ID
    { 
    newLeafNode(this_ID_2, grammarAccess.getJAVAIDAccess().getIDTerminalRuleCall_1_1()); 
    }
)*)
;





// Entry rule entryRuleInterface
entryRuleInterface returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getInterfaceRule()); }
	 iv_ruleInterface=ruleInterface 
	 { $current=$iv_ruleInterface.current; } 
	 EOF 
;

// Rule Interface
ruleInterface returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='interface' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getInterfaceAccess().getInterfaceKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getInterfaceAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getInterfaceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)(	otherlv_2='extends' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getInterfaceAccess().getExtendsKeyword_2_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getInterfaceRule());
	        }
        }
	otherlv_3=RULE_ID
	{
		newLeafNode(otherlv_3, grammarAccess.getInterfaceAccess().getSuperInterfaceInterfaceCrossReference_2_1_0()); 
	}

)
))?	otherlv_4='{' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getInterfaceAccess().getLeftCurlyBracketKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getInterfaceAccess().getAttributesAttributeParserRuleCall_4_0()); 
	    }
		lv_attributes_5_0=ruleAttribute		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getInterfaceRule());
	        }
       		add(
       			$current, 
       			"attributes",
        		lv_attributes_5_0, 
        		"Attribute");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_6='}' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getInterfaceAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRuleAttribute
entryRuleAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAttributeRule()); }
	 iv_ruleAttribute=ruleAttribute 
	 { $current=$iv_ruleAttribute.current; } 
	 EOF 
;

// Rule Attribute
ruleAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getAttributeRule());
	        }
        }
	otherlv_0=RULE_ID
	{
		newLeafNode(otherlv_0, grammarAccess.getAttributeAccess().getTypeTypeCrossReference_0_0()); 
	}

)
)(
(
		lv_many_1_0=	'*' 
    {
        newLeafNode(lv_many_1_0, grammarAccess.getAttributeAccess().getManyAsteriskKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAttributeRule());
	        }
       		setWithLastConsumed($current, "many", true, "*");
	    }

)
)?(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAttributeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
))
;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


