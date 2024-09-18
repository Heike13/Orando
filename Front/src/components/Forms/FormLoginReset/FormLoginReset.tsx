import { useForm } from 'react-hook-form';
// import { Errors } from '../../../@types/form';
import { useAppDispatch, useAppSelector } from '../../../hooks/redux';
import { postResetDatas } from '../../../store/reducers/userConnection';
import './FormLoginReset.scss';
import { FormResetData } from '../../../@types/form';

// Le composant actuel
export default function FormLogin() {
  const resetMessage = useAppSelector(
    (state) => state.userConnection.resetMessage
  );
  const dispatch = useAppDispatch();

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<FormResetData>();

  const onSubmit = (data: FormResetData) => {
    dispatch(postResetDatas(data));
  };

  // Le rendu final du composant
  return (
    <>
      <form className="form__login" onSubmit={handleSubmit(onSubmit)}>
        {errors.email && (
          <p className="form__login__error">{errors.email.message}</p>
        )}
        <input
          type="text"
          placeholder="Adresse Email"
          {...register('email', {
            required: "L'email est obligatoire",
            pattern: {
              value: /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/i,
              message: "L'email n'est pas valide",
            },
          })}
        />

        <input className="form-account__favorites" type="submit" value="OK" />
      </form>
      {resetMessage && <p className="form__login__message">{resetMessage}</p>}
    </>
  );
}
