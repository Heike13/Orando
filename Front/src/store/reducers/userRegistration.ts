import { createReducer, createAsyncThunk } from '@reduxjs/toolkit';
import axios, { AxiosError } from 'axios';
import { ErrorResponse } from '../../@types/axiosError';

// Le typage des données
export type UserProps = {
  messagesResponse: string[];
  isRegistered: boolean;
  successMessage: string;
};

// les propriétés par défaut du state hikes (le state du store.tsx)
const initialState: UserProps = {
  isRegistered: false,
  messagesResponse: [],
  successMessage: '',
};

// En asynchrone, on utilise la méthode "createasyncThunk" pour récupérer les données d'une API
export const postRegisterDatas = createAsyncThunk(
  'USER/POST_REGISTER_DATAS',
  async (datas: FormData) => {
    try {
      const { data } = await axios.post(`/api/accounts/signup`, datas);
      return data;
    } catch (error) {
      if (axios.isAxiosError(error)) {
        const axiosError = error as AxiosError<ErrorResponse>;
        if (axiosError.response && axiosError.response.status === 400) {
          const errors = {
            msg: [...axiosError.response.data.errors.map((err) => err.msg)],
          };
          return errors;
        }
      }
      throw new Error(
        "Une erreur est survenue lors de l'inscription. Merci de réessayer"
      );
    }
  }
);

export const userRegistrationReducer = createReducer(
  initialState,
  (builder) => {
    builder.addCase(postRegisterDatas.fulfilled, (state, action) => {
      if (action.payload.message) {
        state.successMessage = action.payload.message;
        state.isRegistered = true;
      }
      if (action.payload.msg) {
        state.messagesResponse = action.payload.msg;
      }
    });
  }
);
