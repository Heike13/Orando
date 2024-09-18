import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import {
  Route,
  RouterProvider,
  createBrowserRouter,
  createRoutesFromElements,
} from 'react-router-dom';
import store from './store/store';

import './styles/index.scss';

// Import des pages
import Root from './pages/Root';
import NotFound from './pages/NotFound/NotFound';
import Home from './pages/Home/Home';
import Hikes from './pages/Hikes/Hikes';
import OneHike from './pages/OneHike/OneHike';
import Bookmarks from './pages/Bookmarks/Bookmarks';
import SignUp from './pages/SignUp/SignUp';
import Login from './pages/Login/Login';
import LoginReset from './pages/LoginReset/LoginReset';
import LoginReinit from './pages/LoginReinit/LoginReinit';
import Account from './pages/Account/Account';
import AccountDelete from './pages/Account/AccountDelete';
import Imprints from './pages/Imprints/Imprints';
import ConfidentialityPolicies from './pages/ConfidentialityPolicies/ConfidentialityPolicies';

const root = ReactDOM.createRoot(
  document.getElementById('root') as HTMLElement
);

// Url routing : simulate with REACT, the behavior of a browser for URL management
const router = createBrowserRouter(
  createRoutesFromElements(
    <Route path="/" element={<Root />} errorElement={<NotFound />}>
      <Route index element={<Home />} />
      <Route path="/randonnees" element={<Hikes />} />
      <Route path="/randonnees/:id" element={<OneHike />} />
      <Route path="/favoris" element={<Bookmarks />} />
      <Route path="/inscription" element={<SignUp />} />
      <Route path="/connexion" element={<Login />} />
      <Route path="/connexion/reset" element={<LoginReset />} />
      <Route path="/connexion/reinit/:token" element={<LoginReinit />} />
      <Route path="/delete" element={<AccountDelete />} />
      <Route path="/mon-compte" element={<Account />} />
      <Route path="/mentions-legales" element={<Imprints />} />
      <Route
        path="/politiques-de-confidentialite"
        element={<ConfidentialityPolicies />}
      />
    </Route>
  )
);

// Reconcialiation of the react DOM on the html DOM
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <RouterProvider router={router} />
    </Provider>
  </React.StrictMode>
);
