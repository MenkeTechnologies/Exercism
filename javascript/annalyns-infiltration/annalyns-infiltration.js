export const canExecuteFastAttack = knightIsAwake => !knightIsAwake

export const canSpy = (knightIsAwake, archerIsAwake, prisonerIsAwake) =>
    knightIsAwake || archerIsAwake || prisonerIsAwake

export const canSignalPrisoner = (archerIsAwake, prisonerIsAwake) => prisonerIsAwake && !archerIsAwake

export const canFreePrisoner = (knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent) =>
    petDogIsPresent ? !archerIsAwake : prisonerIsAwake && !knightIsAwake && !archerIsAwake
