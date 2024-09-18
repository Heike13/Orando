import { Location } from '../../@types/hike';
import { NavLink, useLocation } from 'react-router-dom';
import { useEffect } from 'react';
import { useAppDispatch } from '../../hooks/redux';
import { changeLocation } from '../../store/reducers/breadcrumbs';
import './Breadcrumbs.scss';

// Utils
import { formatBreadcrumbs } from '../../utils/regEx';

// React component from MUI
import Typography from '@mui/material/Typography';
import Breadcrumbs from '@mui/material/Breadcrumbs';
import HomeIcon from '@mui/icons-material/Home';
import FollowTheSignsSharpIcon from '@mui/icons-material/FollowTheSignsSharp';
import ArrowRightIcon from '@mui/icons-material/ArrowRight';

// Le composant actuel
export default function IconBreadcrumbs() {
  // On récupère nos hooks
  const dispatch = useAppDispatch(); // pour faire une action dans le reducer
  const location: Location = useLocation(); // récupère l'url actuelle

  // On fait une action dans le reducer "breadcrumbs.ts"
  useEffect(() => {
    dispatch(changeLocation(location.pathname));
  }, [dispatch, location.pathname]);

  // TODO : fabriquer un tableau avec les correspondances entre les id des randos, et le nom des randos

  // Grâce à tout ce qu'il y a au dessus (dans la partie logique du composant)
  // je peux générer (toujours en logique, donc ici dans la même partie)
  // la structure de mon composant, afin de pouvoir l'insérer pour de bon plus bas,
  // dans la partie JSX (la partie qui rend l'affichage de la page internet)
  const generateBreadcrumbs = () => {
    const pathnames = location.pathname.split('/').filter((x) => x);

    return (
      <Breadcrumbs aria-label="breadcrumb">
        <NavLink
          to="/"
          style={({ isActive }) => ({
            display: 'flex',
            alignItems: 'center',
            textDecoration: isActive ? 'underline' : 'none',
            color: isActive ? 'grey' : 'inherit',
          })}
        >
          <HomeIcon sx={{ mr: 0.5, mb: 0.5 }} fontSize="inherit" />
          Accueil
        </NavLink>

        {pathnames.map((value, index) => {
          const to = `/${pathnames.slice(0, index + 1).join('/')}`;
          const isLast = index === pathnames.length - 1;

          return isLast ? (
            <Typography
              key={to}
              sx={{ display: 'flex', alignItems: 'center' }}
              color="text.primary"
            >
              <FollowTheSignsSharpIcon
                sx={{ mr: 0.5, mb: 0.5 }}
                fontSize="inherit"
              />
              {formatBreadcrumbs(value)}
            </Typography>
          ) : (
            <NavLink
              key={to}
              to={to}
              style={({ isActive }) => ({
                display: 'flex',
                alignItems: 'center',
                textDecoration: 'none',
                color: isActive ? 'grey' : 'inherit',
              })}
            >
              {/* Just an exemple to manage the icons about the positions on the index */}
              {/* {index === 1 ? (
                <ArrowRightIcon sx={{ mr: 0.5 }} fontSize="inherit" />
              ) : ( */}
              {/* {value.charAt(0).toUpperCase() +
                value.slice(1).replace(/-/g, ' ')} */}
              {/* )} */}
              <ArrowRightIcon sx={{ mr: 0.5, mb: 0.5 }} fontSize="inherit" />
              {formatBreadcrumbs(value)}
            </NavLink>
          );
        })}
      </Breadcrumbs>
    );
  };

  // Le rendu final du composant
  return (
    <div role="presentation">
      <Breadcrumbs className="breadcrumbs" aria-label="breadcrumb">
        {generateBreadcrumbs()}
      </Breadcrumbs>
    </div>
  );
}
