import './SignUp.scss';

// components
import FormRegister from '../../components/Forms/FormRegister/FormRegister';

// Le composant actuel est la page S'enregistrer
export default function SignUp() {
  return (
    <section className="signup__container">
      
      <FormRegister />
    </section>
  );
}
