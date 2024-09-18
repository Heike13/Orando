export function formatBreadcrumbs(string: string) {
  // Remove hyphens between words and replace with a space
  const noHyphens =
    string.charAt(0).toUpperCase() + string.slice(1).replace(/-/g, ' ');

  // Add an apostrophe after 'L' or 'l' when it is followed by a space and a letter
  return noHyphens.replace(/\b([Ll])\s(\w)/g, "$1'$2");
}

export function formatHikeTime(time: number) {
  const hours = Math.floor(time / 60);
  const minutes = time % 60;
  return `${hours} h ${minutes} min`;
}

// regex to find the first 25 words, used in CardComponent.
export function cutText(text: string) {
  const regex = /^(\s*\S+\s*){25}/;
  const match = text.match(regex);
  return match ? `${match[0].trim()}...` : text;
}
