// Check v.1 -- Perform pre-launch craft check
// Usage:
//   run check(<mode>).
// Modes:
//   1: Terse summary of warnings/errors
//   2: Verbose summary of warnings/errors
//   3: Verbose full report
//
// Version history:
//   1.0.1: Initial draft

// Variables:

declare parameter runMode.		// Holds parameter "mode"
list parts in vesselParts.		// List of all parts attached to vessel
set goForLaunch to False.		// Are we good to go?
set stages to list().			// Parts sorted into stages
set warning to list().			// List of warnings
set errors to list().			// List of errors

// Sort parts into stages

for vPart in vesselParts {
  stages[vPart:stage]:add(vPart).
}