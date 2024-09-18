import { NavLink } from 'react-router-dom';
import './Nav.scss';

function Nav() {
  return (
    <nav className="menu">
      <NavLink
        className={({ isActive }) =>
          isActive ? 'menu-link menu-link--active' : 'menu-link'
        }
        to="/"
      >
        Accueil
      </NavLink>

      <NavLink
        className={({ isActive }) =>
          isActive ? 'menu-link menu-link--active' : 'menu-link'
        }
        to="/randonnees"
      >
        Voir les Randos
      </NavLink>

      <NavLink
        className={({ isActive }) =>
          isActive ? 'menu-link menu-link--active' : 'menu-link'
        }
        to="/favoris"
      >
        Favoris
      </NavLink>
    </nav>
  );
}

export default Nav;
