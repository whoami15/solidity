pragma experimental SMTChecker;
contract test {
 struct s { uint a; uint b;}
    function f() pure public returns (byte) {
		s;
		s(1,2);
		s[7];
		uint;
		uint[7];
    }
}
// ----
// Warning 6321: (115-119): Unnamed return variable can remain unassigned. Add an explicit return with value to all non-reverting code paths or name the variable.
// Warning 6133: (125-126): Statement has no effect.
// Warning 6133: (130-136): Statement has no effect.
// Warning 6133: (140-144): Statement has no effect.
// Warning 6133: (148-152): Statement has no effect.
// Warning 6133: (156-163): Statement has no effect.
// Warning 8364: (140-144): Assertion checker does not yet implement type type(struct test.s memory[7] memory)
// Warning 8364: (156-163): Assertion checker does not yet implement type type(uint256[7] memory)
// Warning 8364: (140-144): Assertion checker does not yet implement type type(struct test.s memory[7] memory)
// Warning 8364: (156-163): Assertion checker does not yet implement type type(uint256[7] memory)
