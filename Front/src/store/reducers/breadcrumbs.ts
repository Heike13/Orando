import { createReducer, createAction } from '@reduxjs/toolkit';
import { Location } from '../../@types/hike';

export type Breadcrumbs = {
  previousLocation: Location;
};

const initialState: Breadcrumbs = {
  previousLocation: {
    pathname: '',
  },
};

export const changeLocation = createAction<string>(
  'BREADCRUMBS/UPDATE_LOCATION'
);

export const breadcrumbsReducer = createReducer(initialState, (builder) => {
  builder.addCase(changeLocation, (state, action) => {
    if (state.previousLocation.pathname !== action.payload) {
      state.previousLocation.pathname = action.payload;
    }
  });
});
