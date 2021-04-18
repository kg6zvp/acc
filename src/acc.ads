with Ada.Characters.Handling; use Ada.Characters.Handling;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers; with Ada.Containers.Vectors;

package ACC is
	package Str is new Ada.Containers.Vectors
		(Index_Type   => Positive,
		 Element_Type => Unbounded_String);

	function Partial_Insensitive_Match(Match : String; Input : String) return Boolean;

	function Multiple_Match(Matches : Str.Vector; Candidate: String) return Str.Vector;

	function Match(Matches : Str.Vector; Candidate : String) return String;

	function Complete(Matches : Str.Vector; Candidate : String) return String;
end ACC;
