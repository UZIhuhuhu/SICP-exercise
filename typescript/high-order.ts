interface Isum {
  (
    term: (Parameters: number) => number,
    a: number,
    next: (Parameters: number) => number,
    b: number
  ): number;
}

interface Iinterger {
  (...args: number[]): number;
}

const sum: Isum = (term, a, next, b) =>
  a > b ? 0 : term(a) + sum(term, next(a), next, b);

const cube: Iinterger = x => x * x * x;

const inc: Iinterger = x => x + 1;

const sumCube: Iinterger = (a, b) => sum(cube, a, inc, b);

console.log(sumCube(2, 3));
