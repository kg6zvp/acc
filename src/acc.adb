with Ada.Characters.Handling; use Ada.Characters.Handling;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers; with Ada.Containers.Vectors;

package body ACC is
	function Partial_Insensitive_Match(Match : String; Input : String) return Boolean is
	begin
		for I in Input'Range loop
			if To_Lower(Input(I)) /= To_Lower(Match(I)) then
				return False;
			end if;
		end loop;
		return True;
	end Partial_Insensitive_Match;

	function Multiple_Match(Matches : Str.Vector; Candidate: String) return Str.Vector is
		Ret : Str.Vector;
	begin
		for I in 1..Integer'Value(Matches.Length'Image) loop
			if Partial_Insensitive_Match(Match => To_String(Matches.Element(I)), Input => Candidate) then
				Ret.Append(Matches.Element(I));
			end if;
		end loop;
		return Ret;
	end Multiple_Match;

	function Match(Matches : Str.Vector; Candidate : String) return String is
		Results     : Str.Vector;
		Matches_Num : Integer;
	begin
		Results := Multiple_Match(Matches, Candidate);
		Matches_Num := Integer'Value(Results.Length'Image);
		if Matches_Num <= 1 then
			return To_String(Results.Element(1));
		end if;
		return "";
	end Match;

	function Complete(Matches : Str.Vector; Candidate : String) return String is
	begin
		return ""; --TODO
	end Complete;
end ACC;
