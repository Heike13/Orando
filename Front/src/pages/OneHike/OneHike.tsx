import { useNavigate, useParams } from 'react-router-dom';
import { useEffect } from 'react';
import { Hike } from '../../@types/hike';
import { useAppDispatch, useAppSelector } from '../../hooks/redux';
import { getOneHike } from '../../store/reducers/hikeOne';
import './OneHike.scss';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';

// Components
import HikeDetail from '../../components/HikeDetail/HikeDetail';

// Le composant actuel est la page Une randonnée
function OneHike() {
  const navigation = useNavigate();
  const dispatch = useAppDispatch();
  const params = useParams();
  const id = Number(params.id);

  const error = useAppSelector((state) => state.hikeOne.error);

  // on provoque la requête qui charge les informations de la randonnée dans le store
  useEffect(() => {
    dispatch(getOneHike(id));
    if (error) {
      return navigation('/error');
    }
    return undefined;
  }, [id, dispatch, error, navigation]);

  const hike = useAppSelector((state) => state.hikeOne.oneHike);
  const loading = useAppSelector((state) => state.hikeOne.loading);

  return (
    <div className="hike">
      {loading ? '' : <HikeDetail hike={hike as Hike} />}
    </div>
  );
}

export default OneHike;
