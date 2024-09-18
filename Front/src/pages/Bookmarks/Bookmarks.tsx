import { useEffect } from 'react';
import { NavLink } from 'react-router-dom';
import { useAppDispatch, useAppSelector } from '../../hooks/redux';
import { getBookmarks } from '../../store/reducers/bookmarks';
import './Bookmarks.scss';

// types
import { Hike } from '../../@types/hike';

// components
import HikeFilters from '../../components/HikesFilters/HikeFilters';
import CardComponent from '../../components/CardComponent/CardComponent';

// ------------------------------- Page component : Bookmarks
export default function Bookmarks() {
  const dispatch = useAppDispatch();

  const bookmarks = useAppSelector((state) => state.bookmarks.bookmarks);
  const isLoading = useAppSelector((state) => state.bookmarks.isLoading);
  const isLogged = useAppSelector((state) => state.userConnection.isLogged);

  // Get bookmarks when the component is mounted
  useEffect(() => {
    if (isLogged) {
      dispatch(getBookmarks());
    }
  }, [dispatch, isLogged]);

  // We get the properties of the hikesFilters state in hikesFiltersReducer
  const currentDifficulty = useAppSelector(
    (state) => state.hikesFilters.difficulty
  );
  const currentLocation = useAppSelector(
    (state) => state.hikesFilters.localisation
  );

  // filtering the favorites by difficulty and location
  const filteredBookmarks = bookmarks?.filter((hike: Hike) => {
    const difficultyMatches: boolean =
      currentDifficulty === '' || hike.difficulty === currentDifficulty;
    const locationMatches: boolean =
      currentLocation === '' || hike.localisation === currentLocation;

    return difficultyMatches && locationMatches;
  });

  return isLogged ? (
    <>
      <header>
        <h1>Favoris</h1>
      </header>

      {isLoading ? (
        ''
      ) : (
        <main className="bookmarks">
          {filteredBookmarks && (
            <>
              <section className="bookmarks__filters">
                <HikeFilters data={bookmarks} />
              </section>
              <section className="bookmarks__list">
                {filteredBookmarks.length === 0 ? (
                  <p
                    className="bookmarks__not-found"
                    style={{ textAlign: 'center' }}
                  >
                    Vous n&apos;avez pas de favoris
                  </p>
                ) : (
                  filteredBookmarks.map((hike: Hike) => (
                    <CardComponent key={hike.id} {...hike} />
                  ))
                )}
              </section>
            </>
          )}
        </main>
      )}
    </>
  ) : (
    <p className="bookmarks__not-logged" style={{ textAlign: 'center' }}>
      Vous devez vous <NavLink to="/connexion">connecter</NavLink>
      &nbsp;pour voir vos Favoris
    </p>
  );
}
