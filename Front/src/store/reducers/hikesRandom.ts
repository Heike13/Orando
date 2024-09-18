import { createReducer, createAsyncThunk } from '@reduxjs/toolkit';
import axios from 'axios';

// types
import { Hike } from '../../@types/hike';

export type HikesList = {
  randomHikesList: Hike[];
  loading: boolean;
  error: string | undefined | null;
};

// initial properties for the random hikes state
const initialState: HikesList = {
  randomHikesList: [],
  loading: false,
  error: null,
};

// In asynchronous, we use the "createasyncThunk" method to get data from an API
export const getRandomHikes = createAsyncThunk(
  'HIKES/LOAD_RANDOM_HIKES',
  async () => {
    try {
      const { data } = await axios.get(`/api/hikes/random`);
      return data;
    } catch {
      throw new Error('Pas de randonnées "random" trouvées');
    }
  }
);

export const hikesRandomReducer = createReducer(initialState, (builder) => {
  builder
    .addCase(getRandomHikes.pending, (state) => {
      state.loading = true;
    })
    .addCase(getRandomHikes.rejected, (state, action) => {
      state.error = action.error.message;
      state.loading = false;
    })
    .addCase(getRandomHikes.fulfilled, (state, action) => {
      state.randomHikesList = action.payload;
      state.loading = false;
    });
});
