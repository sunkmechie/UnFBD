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
