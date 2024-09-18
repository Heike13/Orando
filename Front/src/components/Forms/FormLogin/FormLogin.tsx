import { useForm } from 'react-hook-form';
import { useEffect } from 'react';
import { NavLink, useNavigate } from 'react-router-dom';
import { useAppDispatch, useAppSelector } from '../../../hooks/redux';
import {
  postLoginDatas,
} from '../../../store/reducers/userConnection';
import { Errors } from '../../../@types/form';
import './FormLogin.scss';

// Le typage des données
export type FormData = {
  email: string;
  password: string;
  errors?: Errors;
};

// ------------------------------- Le composant actuel
export default function FormLogin() {
  const dispatch = useAppDispatch();
  const navigate = useNavigate();

  const serverResponse = useAppSelector(
    (state) => state.userConnection.serverResponse
  );
  const isLogged = useAppSelector((state) => state.userConnection.isLogged);

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<FormData>();

  const onSubmit = (data: FormData) => {
    dispatch(postLoginDatas(data as any));
  };

  useEffect(() => {
    if (isLogged) {
      navigate('/randonnees');
    }
  }, [navigate, isLogged]);

  // -------------------- Le rendu
  return (
    <form className="form__login" onSubmit={handleSubmit(onSubmit)}>
      <span style={{ color: 'red', textAlign: 'center' }}>
        {serverResponse}
      </span>

      <section className="form__login__field">
        <input
          type="email"
          placeholder="Adresse Email"
          {...register('email', {
            required: "L'email est obligatoire",
            pattern: {
              value: /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/i,
              message: "L'email n'est pas valide",
            },
          })}
        />
        <span className="error__email">{errors?.email?.message}</span>
      </section>

      <section className="form__login__field">
        <input
          type="password"
          placeholder="Mot de passe"
          {...register('password', {
            required: 'Vous devez choisir un mot de passe',
            min: {
              value: 8,
              message: 'Le mot de passe doit avoir au moins 8 caractères',
            },
            maxLength: {
              value: 20,
              message: 'Le mot de passe doit avoir moins de 20 caractères',
            },
            pattern: {
              value:
                /^(?! )(?!.* $)(?!.* {2})(?=.{1,20}$)(?=(?:[^a-zA-Z0-9]*[a-zA-Z0-9]){8})(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[\w\W]*$/i,
              message:
                'Le mot de passe doit contenir au moins 1 majuscule, 1 minuscule, 1 chiffre et un caractère speciaux',
            },
          })}
        />
        <span className="error__password">{errors?.password?.message}</span>
      </section>

      <NavLink className="form-account__forgot-password" to="/connexion/reset">
        réinitialiser le mot de passe
      </NavLink>

      <input className="form-account__favorites" type="submit" value="OK" />
    </form>
  );
}
