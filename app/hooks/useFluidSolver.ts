import { useState } from 'react';

export function useFluidSolver() {
  const [result, setResult] = useState<number | null>(null);

  const solve = (inputs: { velocity: number; density: number }) => {
    const res = 0.5 * inputs.density * inputs.velocity ** 2; // Example: Bernoulli pressure
    setResult(res);
  };

  return { result, solve };
}
