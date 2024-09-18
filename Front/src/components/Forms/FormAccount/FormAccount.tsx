import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { Button } from '@mui/material';
import { useAppDispatch, useAppSelector } from '../../../hooks/redux';
import {
  actionToLogout,
  // changeEditingField,
  clearErrorUserDatas,
  getUserDatas,
  patchUserDatas,
} from '../../../store/reducers/userAccount';
import './FormAccount.scss';

// Local datas
import locations from '../../../data/departements.json';

// Le typage des données
import { tokenLogout } from '../../../store/reducers/userConnection';

// ----------------------------------  Le composant actuel
export default function FormAccount() {
  const dispatch = useAppDispatch();
  const navigate = useNavigate();

  // on récupère les propriétés du state userAccount dans userAccountReducer
  const credentials = useAppSelector((state) => state.userAccount.credentials);
  const errorUserDatas = useAppSelector(
    (state) => state.userAccount.errorUserDatas
  );
  const fulfiledMessage = useAppSelector(
    (state) => state.userAccount.fulfiledMessage
  );

  // on récupère les infos dans le reducer (qui viennent de la BDD)
  useEffect(() => {
    dispatch(getUserDatas());
  }, [credentials, dispatch]);

  // TODO vérifier les infos dans les champs
  // TODO button ok
  // TODO button cancel
  // const handleCancel = () => {
  //   dispatch(changeEditingField(null));
  // };

  const onSubmit = (e: React.FormEvent<HTMLFormElement>, field?: string) => {
    e.preventDefault();
    dispatch(clearErrorUserDatas());

    const formData = new FormData(e.currentTarget);
    const testValue = formData.get(`${field}`);
    const data = {
      [`${field}`]: testValue,
    };
    dispatch(patchUserDatas(data));
  };

  // Le rendu final du composant
  return (
    <main className="form">
      <header>
        <h2>Modifier le compte</h2>
        <p className="form__message-error">{errorUserDatas || ''}</p>
        <p className="form__message-success">{fulfiledMessage || ''}</p>
      </header>

      <main className="form__fields-wrapper">
        <form
          className="form__container"
          onSubmit={(e) => onSubmit(e, 'nickname')}
        >
          <label className="form__labels-form" htmlFor="test">
            Pseudo :
          </label>
          <input
            className="form__field"
            type="text"
            placeholder={credentials.nickname}
            name="nickname"
            id="test"
            // value={credentials.nickname}
          />
          <input
            type="submit"
            className="form__button-validate button"
            value="OK"
          />
        </form>

        <form
          className="form__container"
          onSubmit={(e) => onSubmit(e, 'localisation')}
        >
          <label className="form__labels-form" htmlFor="localisation">
            Localisation :{' '}
          </label>
          <select name="localisation" id="">
            <option value={credentials.localisation}>
              {credentials.localisation}
            </option>
            {locations.map((location) => (
              <option key={location.code} value={location.nom}>
                {location.nom}
              </option>
            ))}
          </select>
          <input
            type="submit"
            className="form__button-validate button"
            value="OK"
          />
        </form>

        <form
          className="form__container"
          onSubmit={(e) => onSubmit(e, 'email')}
        >
          <label className="form__labels-form" htmlFor="email">
            Email :
          </label>
          <input
            className="form__field"
            type="mail"
            placeholder={credentials.email}
            name="email"
            id="test"
            // value={credentials.email}
          />
          <input
            type="submit"
            className="form__button-validate button"
            value="OK"
          />
        </form>
      </main>

      <section className="form__actions-button">
        <button
          type="button" // Add the type attribute with the value "button"
          className="actions__button-reset"
          onClick={() => {
            navigate('/connexion/reset');
          }}
        >
          Réinitialiser le mot de passe
        </button>
        <button
          type="button"
          className="actions__button-logout"
          onClick={() => {
            localStorage.removeItem('token');
            dispatch(tokenLogout());
            dispatch(actionToLogout());

            navigate('/');
          }}
        >
          Se déconnecter
        </button>
        <br />
      </section>

      <footer className="form__delete-account-wrapper">
        <Button
          className="button-delete"
          onClick={() => {
            navigate('/delete');
          }}
          variant="contained"
          color="error"
          sx={{
            width: '160px',
            margin: '0 auto',
            marginTop: '4rem',
            fontWeight: 'bold',
          }}
        >
          Supprimer mon compte
        </Button>
      </footer>
    </main>
  );
}
