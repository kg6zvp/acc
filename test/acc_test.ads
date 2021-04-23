with Ahven.Framework;
with System.Assertions;
with Ahven;
use Ahven;
with Helper;
with ACC;

package ACC_Test is
	type Test is new Ahven.Framework.Test_Case with null record;
	procedure Initialize ( T : in out Test);

private
	--Partial_Insensitive_Match

	--Multiple_Match
	procedure Multiple_Match_Should_Narrow_Down_To_Single_Match_If_Only_One;
	procedure Multiple_Match_Should_Narrow_Down_To_Multiple_Match;

	--Match
	procedure Match_Should_Return_Match_If_Present;
	procedure Match_Should_Return_Empty_For_Multiple_Match;
	procedure Match_Should_Not_Fail_On_No_Match;

	--Complete

end ACC_Test;
