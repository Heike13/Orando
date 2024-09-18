import { useForm } from 'react-hook-form';
import { Errors } from '../../../@types/form';
import { useAppDispatch, useAppSelector } from '../../../hooks/redux';
import { postRegisterDatas } from '../../../store/reducers/userRegistration';

import locations from '../../../data/departements.json';
import './FormRegister.scss';

// Le typage des données
export type FormData = {
  nickname: string;
  localisation: string;
  email: string;
  password: string;
  errors?: Errors;
};

// The actual component
export default function FormRegister() {
  const dispatch = useAppDispatch();

  // On récupère nos states venant du store qu'on stock dans une variable locale
  const isRegistered = useAppSelector(
    (state) => state.userRegistration.isRegistered
  );
  const messagesResponse = useAppSelector(
    (state) => state.userRegistration.messagesResponse
  );
  const successMessage = useAppSelector(
    (state) => state.userRegistration.successMessage
  );

  // Le register permet de recuperer les valeurs des champs du formulaire
  // afin de voir si elles sont valides ou non (dans la console)
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<FormData>();

  // envoi des données au reducer (direction le server back)
  const onSubmit = (data: FormData) => {
    dispatch(postRegisterDatas(data as any));
  };

  const errorMessagesFromApi = messagesResponse.map((message: string, index: number) => {
    return (
      <span key={index}>
        {message}
        <br />
      </span>
    );
  });

  return (
    <>
      {isRegistered ? (
        successMessage
      ) : (
        <form className="form-register" onSubmit={handleSubmit(onSubmit)}>
          <h2>Créer un compte</h2>
          <span
            style={{ color: 'red', textAlign: 'center' }}
            className="form-register__server-response-message"
          >
            {messagesResponse ? errorMessagesFromApi : successMessage}
          </span>
          <section className="form-register__field">
            <label htmlFor="nickname">Pseudo :</label>

            <input
              type="text"
              id="nickname"
              placeholder="Pseudo"
              style={{ width: '100%' }}
              {...register('nickname', {
                required: 'Vous devez choisir un pseudo',
                minLength: {
                  value: 5,
                  message: 'La longueur minimale est de 5 caractères',
                },
                maxLength: {
                  value: 20,
                  message: 'La longueur maximale est de 20 caractères',
                },
                pattern: {
                  value:
                    /^(?! )(?!.* $)(?!.* {2})(?=.{1,20}$)(?=(?:[^a-zA-Z0-9]*[a-zA-Z0-9]){5})[\w\W]*$/i,
                  message: "Le pseudo n'est pas valide",
                },
              })}
            />
            <span className="error__nickname">
              {errors.nickname?.message as string}
            </span>
          </section>
          <section className="form-register__field">
            <label htmlFor="localisation">Localisation</label>
            <select
              id="localisation"
              defaultValue="placeholder"
              {...register('localisation', {
                required: 'Vous devez choisir un departement',
              })}
            >
              <option disabled value="placeholder">
                Choisissez un département
              </option>
              {locations.map((location, index) => (
                <option key={index} value={location.nom}>
                  {location.nom}
                </option>
              ))}
            </select>
            <span className="error__localisation">
              {errors.localisation?.message as string}
            </span>
          </section>
          <section className="form-register__field">
            <label htmlFor="email">Adresse Email</label>
            <input
              type="email"
              id="email"
              placeholder="Adresse Email"
              {...register('email', {
                required: "L'email est obligatoire",
                pattern: {
                  value: /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/i,
                  message: "L'email n'est pas valide",
                },
              })}
            />
            <span className="error__email">
              {errors.email?.message as string}
            </span>
          </section>
          <section className="form-register__field">
            <label htmlFor="password">Mot de passe</label>
            <input
              type="password"
              id="password"
              placeholder="Mot de passe"
              {...register('password', {
                required: 'Vous devez choisir un mot de passe',
                minLength: {
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
                    'Le mot de passe doit contenir au moins 1 majuscule, 1 minuscule, 1 chiffre et un caractère spécial',
                },
              })}
            />
            <span className="error__password">
              {errors.password?.message as string}
            </span>
          </section>
          <button className="form-validation" type="submit">
            S'inscrire
          </button>

          <p
            className="form-register__cgu"
            style={{ textAlign: 'center', marginTop: '3rem', color: 'brown' }}
          >
            En s’inscrivant, vous acceptez nos CGU et notre politique
            d'utilisation des données
          </p>
        </form>
      )}
    </>
  );
}
