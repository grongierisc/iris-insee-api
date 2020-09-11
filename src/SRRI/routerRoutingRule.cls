/// 
Class SRRI.routerRoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="MDM.EJFINESS.Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="sans Z transformation" disabled="false">
<when condition="1">
<send transform="SRRI.DTL.IHEPAM" target="IHEPAM.FILE.OUT,IHEPAM.TCP.OUT"></send>
<return></return>
</when>
</rule>
<rule name="avec Z transformation" disabled="true">
<when condition="1">
<send transform="SRRI.DTL.IHEPAMwithZtransformation" target="IHEPAM.FILE.OUT,IHEPAM.TCP.OUT"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
