import { NavLink } from 'react-router-dom';
import FormAccount from '../../components/Forms/FormAccount/FormAccount';
import { isTokenOk } from '../../utils/decodeJwt';
import { useEffect } from 'react';
import { useAppDispatch, useAppSelector } from '../../hooks/redux';
import { tokenLogout } from '../../store/reducers/userConnection';
import { getUserDatas } from '../../store/reducers/userAccount';

// Le composant actuel est la page Mon compte
function Account() {
  const dispatch = useAppDispatch();
  // const token = localStorage.getItem('token') as string;
  // const expiredToken = isTokenExpired(token);

  const isLogged = useAppSelector((state) => state.userConnection.isLogged);
  const token = isTokenOk(localStorage.getItem('token') as string);

  // AXIOS request to get bookmarks when the component is mounted
  useEffect(() => {
    if (isLogged) {
      dispatch(getUserDatas());
    }
    // if (!token) {
    //   dispatch(tokenLogout());
    // }
  }, [dispatch, isLogged, token]);

  return (
    <section>
      {isLogged ? (
        <FormAccount />
      ) : (
        <p className="bookmarks__not-logged" style={{ textAlign: 'center' }}>
          Vous devez vous <NavLink to="/connexion">connecter</NavLink>
          &nbsp;pour voir la page de votre compte
        </p>
      )}
    </section>
  );
}

export default Account;
