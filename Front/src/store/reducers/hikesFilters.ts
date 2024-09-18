import { createAction, createReducer } from '@reduxjs/toolkit';

export type HikesFiltersProps = {
  difficulty: string;
  localisation: string;
  time: number | null;
};

const initialState: HikesFiltersProps = {
  difficulty: '',
  localisation: '',
  time: null,
};

export const changeDifficulty = createAction<string>(
  'HIKES_FILTERS/CHANGE_DIFFICULTY'
);
export const changeLocalisation = createAction<string>(
  'HIKES_FILTERS/CHANGE_LOCALISATION'
);
export const changeTime = createAction<number>('HIKES_FILTERS/CHANGE_TIME');

export const clearHikesFilters = createAction(
  'HIKES_FILTERS/CLEAR_HIKES_FILTERS'
);

export const hikesFiltersReducer = createReducer(initialState, (builder) => {
  builder
    .addCase(changeLocalisation, (state, action) => {
      state.localisation = action.payload;
    })
    .addCase(changeDifficulty, (state, action) => {
      state.difficulty = action.payload;
    })
    .addCase(changeTime, (state, action) => {
      state.time = action.payload;
    })
    .addCase(clearHikesFilters, (state) => {
      state.difficulty = '';
      state.localisation = '';
      state.time = null;
    });
});
