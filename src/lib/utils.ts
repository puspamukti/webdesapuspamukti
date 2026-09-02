import { clsx, type ClassValue } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

export function encodeId(id: number): string {
  return ((id * 137) + 1042).toString(36).toUpperCase();
}

export function decodeId(code: string): number | null {
  const parsed = parseInt(code.toLowerCase(), 36);
  if (isNaN(parsed)) return null;
  const result = (parsed - 1042) / 137;
  return Number.isInteger(result) ? result : null;
}
