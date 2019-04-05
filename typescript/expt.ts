interface exptType {
  expt: (b: number, n: number) => number;
  fastExpt: (b: number, n: number) => number;
}


const expt = (b: number, n: number): number => (n === 0 ? 1 : expt(b, n - 1) * b);

const fastExpt = (b: number, n: number): number =>
  n === 0 ? 1 : n % 2 === 0 ? fastExpt(b, n / 2) ** 2 : fastExpt(b, n - 1) * b;

console.log(expt(2, 3));
console.log(fastExpt(2, 3));
