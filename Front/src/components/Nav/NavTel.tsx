import Button from '@mui/material/Button';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
import PopupState, { bindTrigger, bindMenu } from 'material-ui-popup-state';
import { useAppSelector } from '../../hooks/redux';
import { useNavigate } from 'react-router-dom';

import './Nav.scss';

export default function NavTel() {
  const navigate = useNavigate();
  const isLogged = useAppSelector((state) => state.userConnection.isLogged);

  const handleMenuClick = (path: string) => {
    navigate(path);
  };

  return (
    <PopupState variant="popover" popupId="demo-popup-menu">
      {(popupState) => (
        <>
          <Button
            className="nav__button"
            sx={{
              backgroundColor: '#73bfb7a9',
              ':hover': {
                backgroundColor: '#73bfb7',
              },
              color: 'black',
              boxShadow: '2px 2px 4px #000000',
              borderRadius: '7px',
              width: '50px',
              height: '50px',
              marginLeft: 'auto',
              marginBottom: '100px',
            }}
            variant="contained"
            {...bindTrigger(popupState)}
          >
            <div className="hamburger-menu-wrapper">
              <span className="hamburger-menu"></span>
              <span className="hamburger-menu"></span>
              <span className="hamburger-menu"></span>
            </div>
          </Button>
          <Menu {...bindMenu(popupState)}>
            <MenuItem
              sx={{
                ':hover': {
                  backgroundColor: '#73bfb7',
                },
              }}
              onClick={() => {
                popupState.close();
                handleMenuClick('/');
              }}
            >
              Accueil
            </MenuItem>
            <MenuItem
              sx={{
                ':hover': {
                  backgroundColor: '#73bfb7',
                },
              }}
              onClick={() => {
                popupState.close();
                handleMenuClick('/randonnees');
              }}
            >
              Voir les randos
            </MenuItem>
            {isLogged && (
              <MenuItem
                sx={{
                  ':hover': {
                    backgroundColor: '#73bfb7',
                  },
                }}
                onClick={() => {
                  popupState.close();
                  handleMenuClick('/favoris');
                }}
              >
                Favoris
              </MenuItem>
            )}
            <MenuItem
              sx={{
                ':hover': {
                  backgroundColor: '#73bfb7',
                },
              }}
              onClick={() => {
                popupState.close();
                handleMenuClick(isLogged ? '/mon-compte' : '/connexion');
              }}
            >
              {isLogged ? 'Mon compte' : 'Se connecter'}
            </MenuItem>
          </Menu>
        </>
      )}
    </PopupState>
  );
}
