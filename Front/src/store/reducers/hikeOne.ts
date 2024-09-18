import { createReducer, createAsyncThunk } from '@reduxjs/toolkit';
import axios from 'axios';

//  le typage TS pour une randonnée = Hike
// Une liste s'exprime par un tableau (en général)
// ligne 14, le tableau des randonnées est doonc un [tableau] de type "Hike" = Hike[]
import { Hike } from '../../@types/hike';

//  le typage TS pour tout l'état (le state hikes du store.tsx)
export type hikeOneProps = {
  oneHike: Hike;
  loading: boolean;
  error: string | undefined | null;
};

// les propriétés par défaut du state hikes (le state du store.tsx)
const initialState: hikeOneProps = {
  oneHike: Object.assign({}),
  loading: true,
  error: null,
};

// En asynchrone, on utilise la méthode "createasyncThunk" pour récupérer les données d'une API
export const getOneHike = createAsyncThunk(
  'HIKES/LOAD_FROM_API',
  async (id: number) => {
    try {
      const { data } = await axios.get(`/api/hikes/${id}`);
      return data;
    } catch {
      throw new Error('Pas de randonnées "random" trouvées');
    }
  }
);

export const hikeOneReducer = createReducer(initialState, (builder) => {
  builder
    .addCase(getOneHike.pending, (state) => {
      state.loading = true;
    })
    .addCase(getOneHike.rejected, (state, action) => {
      state.error = action.error.message;
    })
    .addCase(getOneHike.fulfilled, (state, action) => {
      state.oneHike = action.payload;
      state.loading = false;
    });
});
