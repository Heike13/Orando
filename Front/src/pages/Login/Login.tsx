import './Login.scss';

// components
import FormLogin from '../../components/Forms/FormLogin/FormLogin';
import { NavLink } from 'react-router-dom';

// Le composant actuel est la page Se connecter
export default function Login() {
  return (
    <div className="login__container">
      <h1 className="page_title">Se connecter</h1>
      <FormLogin />
      <p className="title__no-account">
        Si vous ne possédez pas de compte, {''}
        <NavLink to="/inscription">créez votre compte</NavLink>
      </p>
    </div>
  );
}
