import './LoginReset.scss';

// components
import FormLoginReset from '../../components/Forms/FormLoginReset/FormLoginReset';

// Le composant actuel est la page Réinitialiser le mot de passe
export default function Login() {
  return (
    <div className="login__container">
      <h1 className="page_title">
        Demande de reinitialisation du mot de passe
      </h1>
      <FormLoginReset />
    </div>
  );
}
