import { createReducer } from '@reduxjs/toolkit';

const initialState = {
  widthMediaScreen: 840 as number,
  SkeletonNumberOfCards: 10 as number,
};

export const settingsReducer = createReducer(initialState, (builder) => {
  builder;
});
