import { NavLink } from 'react-router-dom';
import AspectRatio from '@mui/joy/AspectRatio';
import Card from '@mui/joy/Card';
import CardContent from '@mui/joy/CardContent';
import CardOverflow from '@mui/joy/CardOverflow';
import Divider from '@mui/joy/Divider';
import Typography from '@mui/joy/Typography';
import Bookmarks from '../BookmarkActions/BookmarkActions';
import './CardComponent.scss';

// Components
import RenderDifficulty from '../RenderTagDifficulty/RenderTagDifficultyStyle';

// Utils
import { cutText, formatHikeTime } from '../../utils/regEx';
import { Hike } from '../../@types/hike';
import { useAppSelector } from '../../hooks/redux';

// Le composant actuel
export default function CardComponent(hike: Hike) {
  const isLogged = useAppSelector((state) => state.userConnection.isLogged);

  return (
    <>
      {' '}
      <Card className="card" variant="outlined" sx={{ width: 400 }}>
        <CardOverflow>
          {/* Bookmark button */}
          {isLogged ? <Bookmarks id={hike?.id as number} /> : ''}

          {/* Photos */}
          <AspectRatio ratio="1">
            <img src={hike?.pictures[0]} loading="lazy" alt="" />
          </AspectRatio>
        </CardOverflow>

        {/* Le nav link qui permet de voyager vers la page de la randonne */}
        <NavLink to={`/randonnees/${hike?.id}`} className="no-decoration">
          {/* Card content */}
          <CardContent
            className="card__content"
            // sx={{ maxHeight: 'fit-content' }}
          >
            <h3 className="card__title">{hike?.title}</h3>
            <div className="card__description">
              <Typography
                level="body-sm"
                sx={{
                  minHeight: '4.5rem',
                  marginTop: '1rem',
                }}
              >
                {cutText(hike?.description)}
              </Typography>
            </div>
          </CardContent>
        </NavLink>

        {/* Card footer */}
        <CardOverflow variant="soft">
          <Divider inset="context" />

          {/* Card tags */}
          <CardContent
            orientation="horizontal"
            sx={{
              minHeight: '6rem',
              display: 'flex',
              flexWrap: 'wrap',
              backgroundColor: '#f5f5f5',
              borderRadius: '8px',
              '& .column': {
                display: 'flex',
                flexDirection: 'column',
                margin: 'auto',
                textAlign: 'center',
                marginBottom: '1rem',
              },
            }}
          >
            <aside className="column">
              <h4>Localisation :</h4>
              <p>{hike?.localisation}</p>
            </aside>

            <aside className="column">
              <h4>Marche :</h4>
              <p>{formatHikeTime(hike?.time)}</p>
            </aside>

            <aside className="column special-column">
              <h4>Difficulté :</h4>
              {RenderDifficulty(hike)}
            </aside>
          </CardContent>
        </CardOverflow>
      </Card>
    </>
  );
}
