import { createReducer, createAction } from '@reduxjs/toolkit';

export type PropsMenu = {
  nav: string[];
};

const initialState: PropsMenu = {
  nav: ['Accueil', 'Voir les Randos', 'Favoris'],
};

export const getMenuItems = createAction<string>('MENU/DISPLAY_ITEMS');

export const menuReducer = createReducer(initialState, (builder) => {
  builder.addCase(getMenuItems, (state, action) => {
    console.log(state.nav);
  });
});
