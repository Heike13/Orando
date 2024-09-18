import { Outlet, useLocation } from 'react-router-dom';
import { useEffect } from 'react';
import { useAppDispatch, useAppSelector } from '../hooks/redux';
import { getHikes } from '../store/reducers/hikesAll';
import { getRandomHikes } from '../store/reducers/hikesRandom';
import { isTokenOk } from '../utils/decodeJwt';
import './Root.scss';

// components
import Header from '../components/Header/Header';
import Footer from '../components/Footer/Footer';
import ScrollToTop from '../components/ui/ScollToTop/ScrollToTop';

export default function Root() {
  const dispatch = useAppDispatch();
  const currentUrl = useLocation();

  const userToken = useAppSelector((state) => state.userConnection.token);
  const token = isTokenOk(userToken ?? "");


  // on récupère les randos dès que le composant Root est monté pour le premier rendu
  useEffect(() => {
    dispatch(getRandomHikes());
    dispatch(getHikes());
  }, [dispatch, token]);

  // on récupère l'URL pour surveiller lorsqu'elle change
  const { pathname } = useLocation();
  useEffect(() => {
    window.scrollTo(0, 0);
  }, [pathname]);

  return (
    <div className="container__background">
      <Header />
      <div className="content">
        <ScrollToTop />
        <Outlet />
      </div>
      {currentUrl.pathname !== '/connexion' &&
      currentUrl.pathname !== '/connexion/reset' &&
      currentUrl.pathname !== '/connexion/reinit' &&
      currentUrl.pathname !== '/inscription' &&
      currentUrl.pathname !== '/mon-compte' ? (
        <Footer />
      ) : (
        ''
      )}
    </div>
  );
}
