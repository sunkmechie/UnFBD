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
