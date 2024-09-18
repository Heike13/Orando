import {
  createAction,
  createAsyncThunk,
  createReducer,
} from '@reduxjs/toolkit';
import axios from 'axios';

// Le typage TS
export type hikeCreationProps = {
  hikeLocations: string[];
};

const initialState: hikeCreationProps = {
  hikeLocations: [''],
};

// export const setWidth = createAction<string>('SETTINGS/MAX_WIDTH_MEDIASCREEN');

export const getLocationsFromAPI = createAsyncThunk(
  'HIKE_LOCATION/LOAD_HIKE_LOCATIONS',
  async () => {
    try {
      const { data } = await axios.get(`https://geo.api.gouv.fr/departements`);
      console.log(data);
      return data;
    } catch {
      throw new Error('Pas de département trouvés');
    }
  }
);

export const hikeCreationReducer = createReducer(initialState, (builder) => {
  builder
    .addCase(getLocationsFromAPI.pending, (state) => {
      // Gestion du chargement
    })
    .addCase(getLocationsFromAPI.rejected, (state, action) => {
      // Gestion des erreurs
    })
    .addCase(getLocationsFromAPI.fulfilled, (state, action) => {
      state.hikeLocations = action.payload;
    });
});
