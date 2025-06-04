#!/bin/bash

# Navigate to the app directory
cd "$(dirname "$0")/app" || exit 1

# Define folders
mkdir -p app/fluidaf components hooks constants

# Create files with contents

# app/_layout.tsx
cat > app/_layout.tsx <<'EOF'
import { Stack } from 'expo-router';

export default function Layout() {
  return <Stack screenOptions={{ headerShown: false }} />;
}
EOF

# app/fluidaf/index.tsx
cat > app/fluidaf/index.tsx <<'EOF'
import { View, Text } from 'react-native';

export default function FluidAFHome() {
  return (
    <View>
      <Text>Welcome to FluidAF 🚀</Text>
      <Text>Choose a calculator or explore theory</Text>
    </View>
  );
}
EOF

# app/fluidaf/calculators.tsx
cat > app/fluidaf/calculators.tsx <<'EOF'
import { View, Text } from 'react-native';

export default function Calculators() {
  return (
    <View>
      <Text>Fluid Mechanics Calculators</Text>
    </View>
  );
}
EOF

# app/fluidaf/solver.tsx
cat > app/fluidaf/solver.tsx <<'EOF'
import { View, Text } from 'react-native';

export default function Solver() {
  return (
    <View>
      <Text>Fluid Solver</Text>
    </View>
  );
}
EOF

# app/fluidaf/theory.tsx
cat > app/fluidaf/theory.tsx <<'EOF'
import { View, Text } from 'react-native';

export default function Theory() {
  return (
    <View>
      <Text>Theory & Concepts</Text>
    </View>
  );
}
EOF

# components/CalculatorInput.tsx
cat > components/CalculatorInput.tsx <<'EOF'
import { View, TextInput, Text } from 'react-native';

interface CalculatorInputProps {
  label: string;
  value: string;
  onChange: (text: string) => void;
}

export default function CalculatorInput({ label, value, onChange }: CalculatorInputProps) {
  return (
    <View>
      <Text>{label}</Text>
      <TextInput value={value} onChangeText={onChange} keyboardType="numeric" />
    </View>
  );
}
EOF

# components/ResultCard.tsx
cat > components/ResultCard.tsx <<'EOF'
import { View, Text } from 'react-native';

interface ResultCardProps {
  label: string;
  value: string;
  unit?: string;
}

export default function ResultCard({ label, value, unit }: ResultCardProps) {
  return (
    <View>
      <Text>{label}: {value} {unit}</Text>
    </View>
  );
}
EOF

# components/Header.tsx
cat > components/Header.tsx <<'EOF'
import { View, Text } from 'react-native';

export default function Header() {
  return (
    <View>
      <Text style={{ fontSize: 24 }}>FluidAF</Text>
    </View>
  );
}
EOF

# hooks/useFluidSolver.ts
cat > hooks/useFluidSolver.ts <<'EOF'
import { useState } from 'react';

export function useFluidSolver() {
  const [result, setResult] = useState<number | null>(null);

  const solve = (inputs: { velocity: number; density: number }) => {
    const res = 0.5 * inputs.density * inputs.velocity ** 2; // Example: Bernoulli pressure
    setResult(res);
  };

  return { result, solve };
}
EOF

# constants/fluidProperties.ts
cat > constants/fluidProperties.ts <<'EOF'
export const fluidProperties = {
  water: {
    density: 1000, // kg/m³
    viscosity: 0.001, // Pa·s
  },
  air: {
    density: 1.225,
    viscosity: 0.0000181,
  },
};
EOF

echo "✅ FluidAF folder structure and boilerplate created successfully."
