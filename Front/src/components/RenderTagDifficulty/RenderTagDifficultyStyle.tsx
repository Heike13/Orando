import { Hike } from '../../@types/hike';

// Put some color depends of the difficulty
const difficultyStyles: { [key: string]: { color: string } } = {
  Facile: { color: 'green' },
  Moyenne: { color: 'orange' },
  Difficile: { color: 'red' },
};

function RenderDifficulty({ difficulty }: Hike) {
  const style = difficultyStyles[difficulty] || {};
  return <p style={style}>{difficulty}</p>;
}

export default RenderDifficulty;
