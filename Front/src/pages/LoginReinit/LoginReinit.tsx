import './LoginReinit.scss';

// components
import FormLoginReinit from '../../components/Forms/FormLoginReinit/FormLoginReinit';

// Le composant actuel est la page Créer un nouveau mot de passe
export default function Login() {
  return (
    <div className="login__container">
      <h1 className="page_title">Création d'un nouveau mot de passe</h1>
      <FormLoginReinit />
    </div>
  );
}
