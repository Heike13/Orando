// 5B - on importe les hooks originaux de react-redux
import { useSelector, useDispatch } from 'react-redux';
// 5C - on récupère les types de notre store
import { RootState, AppDispatch } from '../store/store';

// 5D- on re exporte ces hooks surchargés avec les types de notre store
// c'est ceux là, nos custom hooks, qu'on utilisera tout au long de l'app
export const useAppSelector = useSelector.withTypes<RootState>();
export const useAppDispatch = useDispatch.withTypes<AppDispatch>();
