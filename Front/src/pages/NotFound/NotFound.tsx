import React, { useEffect } from 'react';
import errorImage from '/404fof.webp';
import './NotFound.scss';

// Le composant actuel est la page 404 / Error
export default function NotFound() {
  useEffect(() => {
    document.body.classList.add('not-found-page');
    return () => {
      document.body.classList.remove('not-found-page');
    };
  }, []);

  return (
    <div className="not-found-content">
      <h1 className="error-title">Vous êtes perdu au milieu des bois !</h1>
      <div className="overlay">
        <img src={errorImage} alt="404 error" className="error-image" loading="lazy"/>
        <a href="/" className="home-link">
          C'est par ici
        </a>
      </div>
    </div>
  );
}
