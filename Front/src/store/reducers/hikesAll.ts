import { createReducer, createAsyncThunk } from '@reduxjs/toolkit';
import axios from 'axios';

// types
import { Hike } from '../../@types/hike';

export type HikesList = {
  hikesList: Hike[];
  loading: boolean;
  error: string | undefined | null;
};

const initialState: HikesList = {
  hikesList: [],
  loading: false,
  error: null,
};

export const getHikes = createAsyncThunk('HIKES/LOAD_HIKES', async () => {
  try {
    const { data } = await axios.get(`/api/hikes`);
    return data;
  } catch {
    throw new Error('Pas de randonnées trouvées');
  }
});

export const hikesListReducer = createReducer(initialState, (builder) => {
  builder
    .addCase(getHikes.pending, (state) => {
      state.loading = true;
    })
    .addCase(getHikes.rejected, (state, action) => {
      state.error = action.error.message;
      state.loading = false;
    })
    .addCase(getHikes.fulfilled, (state, action) => {
      state.hikesList = action.payload;
      state.loading = false;
    });
});
