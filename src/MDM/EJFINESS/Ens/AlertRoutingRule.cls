/// 
Class MDM.EJFINESS.Ens.AlertRoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="MDM.EJFINESS.Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<when condition="1">
<send transform="" target="EnsLib.EMail.AlertOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
