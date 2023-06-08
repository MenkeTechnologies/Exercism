export function score(x: number, y: number): number {
  let distance = Math.sqrt(x*x + y*y)
  return distance <= 1 ? 10 : distance <= 5 ? 5 : distance <= 10 ? 1 : 0;
}

