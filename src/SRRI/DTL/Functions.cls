Class SRRI.DTL.Functions Extends Ens.Rule.FunctionSet
{

/// Replace Voyels by parameter
ClassMethod ReplaceVoyels(stringInitial As %String, renplacement As %String) As %String
{
  set string1 = stringInitial
  set string2 = "aeiouAEIOU"
  Set key = 0 , replacement = ""
  For {
    Set key = $i(key)
    Quit:key=11
     set replacement = replacement_renplacement
  }
  Set string3 = replacement 
 
  Quit $Tr(string1,string2,string3)
}

}
