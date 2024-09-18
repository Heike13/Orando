import { useEffect } from 'react';
import { getBookmarks } from '../../store/reducers/bookmarks';
import { Hike } from '../../@types/hike';
import { useAppDispatch, useAppSelector } from '../../hooks/redux';
import './Hikes.scss';

// components
import HikeFilters from '../../components/HikesFilters/HikeFilters';
import SkeletonLoader from '../../components/SkeletonLoader/SkeletonLoader';
import CardComponent from '../../components/CardComponent/CardComponent';

// ------------------------------ Page component : See all hikes
export default function Hikes() {
  const dispatch = useAppDispatch();

  const loading = useAppSelector((state) => state.hikesAll.loading);
  const hikes = useAppSelector((state) => state.hikesAll.hikesList);

  useEffect(() => {
    dispatch(getBookmarks());
  }, [dispatch]);

  const currentDifficulty = useAppSelector(
    (state) => state.hikesFilters.difficulty
  );
  const currentLocation = useAppSelector(
    (state) => state.hikesFilters.localisation
  );

  // filtering hikes by difficulty and location
  const filteredHikes = hikes.filter((hike: Hike) => {
    const difficultyMatches: boolean =
      currentDifficulty === '' || hike.difficulty === currentDifficulty;
    const locationMatches: boolean =
      currentLocation === '' || hike.localisation === currentLocation;

    return difficultyMatches && locationMatches;
  });

  return (
    <>
      <h1 className="page_title">Toutes les randonnées du catalogue </h1>
      <div className="hikes">
        <section className="hikes__filters">
          <HikeFilters data={hikes} />
        </section>
        <section className="hikes__list">
          {loading ? (
            <SkeletonLoader skeletonNumber={20} />
          ) : (
            filteredHikes.map((hike: Hike) => (
              <CardComponent key={hike.id} {...hike} />
            ))
          )}
        </section>
      </div>
    </>
  );
}
