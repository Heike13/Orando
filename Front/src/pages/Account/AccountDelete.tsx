import { useNavigate } from 'react-router-dom';
import { Button } from '@mui/material';
import { isTokenOk } from '../../utils/decodeJwt';
import { deleteUser } from '../../store/reducers/userAccount';
import { useAppDispatch } from '../../hooks/redux';

import './Account.scss';

// Le composant actuel est la page Mon compte
export default function AccountDelete(): React.ReactNode {
  const token = isTokenOk(localStorage.getItem('token') as string);

  const navigate = useNavigate();
  const dispatch = useAppDispatch();

  const handleClick = () => {
    dispatch(deleteUser());
    navigate('/');
  };

  return token ? (
    <main className="delete__account-wrapper">
      <h1>Suppression totale du compte</h1>
      <section className="delete__account-container">
        <h3>Voulez vous vraiment supprimer votre compte ?</h3>
        <span>toutes les infos seront définitivement supprimées</span>
        <Button
          className="delete-button"
          onClick={() => {
            handleClick();
          }}
          variant="contained"
          color="error"
          sx={{
            width: '160px',
            margin: '0 auto',
            marginTop: '4rem',
            marginBottom: '1rem',
            fontWeight: 'bold',
          }}
        >
          Supprimer mon compte
        </Button>
      </section>
    </main>
  ) : (
    <>{navigate('/connexion')}</>
  );
}
