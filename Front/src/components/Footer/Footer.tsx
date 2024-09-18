import { NavLink } from 'react-router-dom';
import './Footer.scss';

// Le composant actuel
function Footer() {
  return (
    <footer className="footer">
      <section className="footer__nav">
        <NavLink className="footer__nav-links" to="/">
          Accueil
        </NavLink>
        <NavLink className="footer__nav-links" to="/randonnees">
          Voir les Randos
        </NavLink>
        <NavLink className="footer__nav-links" to="/favoris">
          Favoris
        </NavLink>
        <NavLink className="footer__nav-links" to="/mon-compte">
          Mon compte
        </NavLink>
        <NavLink className="footer__nav-links" to="/mentions-legales">
          Mentions légales
        </NavLink>
        <NavLink
          className="footer__nav-links"
          to="/politiques-de-confidentialite"
        >
          Politiques de confidentialité
        </NavLink>
      </section>
      <span className="footer__copyright">© 2024 O'Rando </span>
    </footer>
  );
}

export default Footer;
