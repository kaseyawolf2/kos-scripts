// Check v.1 -- Perform pre-launch craft check
// Usage:
//   run check.
//
// Version history:
//   1.0.1: Initial draft

// Variables:

list parts in vesselParts.		// List of all parts attached to vessel
set stages to list().			// Parts sorted into stages

clearscreen.
print "Ship Check Report".
print "--------------------------------------------------".

// Sort parts into stages

for vPart in vesselParts {
  until stages:length > vPart:stage {
    // Expand the list if necessary
    stages:add(list()).
  }
  stages[vPart:stage]:add(vPart).
}

print "Vessel has " + vesselParts:length + " parts in " + stages:length + " stages.".
