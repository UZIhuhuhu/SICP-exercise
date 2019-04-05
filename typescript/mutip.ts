const double = x => x * 2;

const halve = x => x / 2;

function multiple(a: number, b: number): number {
  return b === 0
    ? 0
    : b % 2 === 0
    ? double(multiple(a, halve(b)))
    : a + multiple(a, b - 1);
}

console.log(multiple(12, 5));
