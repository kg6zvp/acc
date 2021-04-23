with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ahven.Framework;
with System.Assertions;
with Ahven; use Ahven;
with Helper;
with ACC;

with Ada.Text_IO;

package body ACC_Test is
	procedure Initialize ( T : in out Test) is
	begin
		Set_Name(T, "ACC_Test");

		--Multiple_Match
		Ahven.Framework.Add_Test_Routine(T, Multiple_Match_Should_Narrow_Down_To_Single_Match_If_Only_One'Access, "Multiple_Match_Should_Narrow_Down_To_Single_Match_If_Only_One");
		Ahven.Framework.Add_Test_Routine(T, Multiple_Match_Should_Narrow_Down_To_Multiple_Match'Access, "Multiple_Match_Should_Narrow_Down_To_Multiple_Match");

		--Match
		Ahven.Framework.Add_Test_Routine(T, Match_Should_Return_Match_If_Present'Access, "Match_Should_Return_Match_If_Present");
		Ahven.Framework.Add_Test_Routine(T, Match_Should_Return_Empty_For_Multiple_Match'Access, "Match_Should_Return_Empty_For_Multiple_Match");
		Ahven.Framework.Add_Test_Routine(T, Match_Should_Not_Fail_On_No_Match'Access, "Match_Should_Not_Fail_On_No_Match");
	end Initialize;

	procedure Multiple_Match_Should_Narrow_Down_To_Single_Match_If_Only_One is
		Match_Vec : ACC.Str.Vector;
		Result_Vec : ACC.Str.Vector;
	begin
		Match_Vec.Append(To_Unbounded_String("System"));
		Match_Vec.Append(To_Unbounded_String("Ports"));
		Match_Vec.Append(To_Unbounded_String("VLANs"));

		Result_Vec := ACC.Multiple_Match(Matches => Match_Vec, Candidate => "P");
		Assert(1 = Integer'Value(Result_Vec.Length'Image), "2 = " & Result_Vec.Length'Image);
		Assert("Ports" = To_String(Result_Vec.Element(1)), """Ports"" = """ & To_String(Result_Vec.Element(1)) & """");
	end Multiple_Match_Should_Narrow_Down_To_Single_Match_If_Only_One;
	
	procedure Multiple_Match_Should_Narrow_Down_To_Multiple_Match is
		Match_Vec : ACC.Str.Vector;
		Result_Vec : ACC.Str.Vector;
	begin
		Match_Vec.Append(To_Unbounded_String("System"));
		Match_Vec.Append(To_Unbounded_String("Ports"));
		Match_Vec.Append(To_Unbounded_String("Pernicious"));

		Result_Vec := ACC.Multiple_Match(Matches => Match_Vec, Candidate => "P");
		Assert(2 = Integer'Value(Result_Vec.Length'Image), "2 = " & Result_Vec.Length'Image);
		Assert("Ports" = To_String(Result_Vec.Element(1)), """Ports"" = """ & To_String(Result_Vec.Element(1)) & """");
		Assert("Pernicious" = To_String(Result_Vec.Element(2)), """Pernicious"" = """ & To_String(Result_Vec.Element(2)) & """");
	end Multiple_Match_Should_Narrow_Down_To_Multiple_Match;

	procedure Match_Should_Return_Match_If_Present is
		Match_Vec : ACC.Str.Vector;
	begin
		Match_Vec.Append(To_Unbounded_String("System"));
		Match_Vec.Append(To_Unbounded_String("Ports"));
		Match_Vec.Append(To_Unbounded_String("VLANs"));

		Assert("Ports" = ACC.Match(Matches => Match_Vec, Candidate => "P"), """Ports"" = """ & ACC.Match(Matches => Match_Vec, Candidate => "P") & """");
	end Match_Should_Return_Match_If_Present;
	
	procedure Match_Should_Return_Empty_For_Multiple_Match is
		Match_Vec : ACC.Str.Vector;
	begin
		Match_Vec.Append(To_Unbounded_String("System"));
		Match_Vec.Append(To_Unbounded_String("Ports"));
		Match_Vec.Append(To_Unbounded_String("Pernicious"));

		Assert("" = ACC.Match(Matches => Match_Vec, Candidate => "P"), """"" = """ & ACC.Match(Matches => Match_Vec, Candidate => "P") & """");
	end Match_Should_Return_Empty_For_Multiple_Match;

	procedure Match_Should_Not_Fail_On_No_Match is
		Match_Vec : ACC.Str.Vector;
	begin
		Match_Vec.Append(To_Unbounded_String("System"));
		Match_Vec.Append(To_Unbounded_String("Ports"));

		Assert("" = ACC.Match(Matches => Match_Vec, Candidate => "spl"), "Failed to return empty for no match");
	end Match_Should_Not_Fail_On_No_Match;
end ACC_Test;
