import {
  createAction,
  createAsyncThunk,
  createReducer,
} from '@reduxjs/toolkit';
import axios from 'axios';
import { FormReinitData, FormResetData } from '../../@types/form';
import { isTokenOk } from '../../utils/decodeJwt';

type InitialStateProps = {
  token: string | null;
  serverResponse: string;
  isLogged?: boolean;
  resetMessage: string;
};

const initialState: InitialStateProps = {
  token: '',
  serverResponse: '',
  isLogged: isTokenOk(localStorage.getItem('token') as string) || false,
  resetMessage: '',
};

// LOGIN
export const postLoginDatas = createAsyncThunk(
  'USER/POST_LOGIN_DATAS',
  async (datas: FormData) => {
    try {
      const { data } = await axios.post(`/api/accounts/login`, datas);
      return data;
    } catch (error) {
      throw new Error("L'email ou le mot de passe sont incorrects");
    }
  }
);

// Route to ask for reset password
export const postResetDatas = createAsyncThunk(
  'USER/POST_RESET_DATAS',
  async (datas: FormResetData) => {
    try {
      const { data } = await axios.post(`/api/accounts/forgot-password`, datas);
      return data;
    } catch (error) {
      throw new Error("L'email est incorrect ou inexistant");
    }
  }
);

// Route to reinit password
export const postReinitDatas = createAsyncThunk(
  'USER/POST_REINIT_DATAS',
  async (datas: FormReinitData) => {
    try {
      const { data } = await axios.post(`/api/accounts/reset-password`, {
        newPassword: datas.newPassword,
        token: datas.token,
      });
      return data;
    } catch (error) {
      throw new Error('Le mot de passe ne convient pas');
    }
  }
);

export const tokenLogout = createAction('USER/LOGOUT');
export const clearServerResponse = createAction('USER/CLEAR_SERVER_RESPONSE');

export const userConnectionReducer = createReducer(initialState, (builder) => {
  builder
    // LOGIN
    .addCase(postLoginDatas.rejected, (state, action) => {
      state.serverResponse = action.error.message as string;
    })
    .addCase(postLoginDatas.fulfilled, (state, action) => {
      localStorage.setItem('token', action.payload.token);
      state.token = action.payload.token;
      state.isLogged = true;
    })
    .addCase(clearServerResponse, (state) => {
      state.serverResponse = '';
    })
    // LOGOUT
    .addCase(tokenLogout, (state) => {
      state.token = null;
      state.isLogged = false;
      localStorage.removeItem('token');
    })
    // Ask reset password
    .addCase(postResetDatas.rejected, (state, action) => {
      state.resetMessage = action.error.message as string;
    })
    .addCase(postResetDatas.fulfilled, (state) => {
      state.resetMessage = 'Un lien vous a été envoyé';
    })
    // Reinit password
    .addCase(postReinitDatas.rejected, (state, action) => {
      state.resetMessage = action.error.message as string;
    })
    .addCase(postReinitDatas.fulfilled, (state, action) => {
      state.resetMessage = action.payload.message;
    });
});
