import { useAppDispatch, useAppSelector } from '../../hooks/redux';
import {
  changeDifficulty,
  changeLocalisation,
} from '../../store/reducers/hikesFilters';
import './HikeFilters.scss';

// components from MUI
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import ArrowRightIcon from '@mui/icons-material/ArrowRight';

function HikeFilters() {
  const dispatch = useAppDispatch();
  const currentLocation = useAppSelector(
    (state) => state.hikesFilters.localisation
  );
  const currentDifficulty = useAppSelector(
    (state) => state.hikesFilters.difficulty
  );

  // on reprend les données du store pour les randonnées
  const hikes = useAppSelector((state) => state.hikesAll.hikesList);
  // 1er select : récupérer toutes les localisations
  const locations: string[] = Array.from(new Set(hikes.map((hike: { localisation: string }) => hike.localisation)));


  // 2e select : récupérer toutes les difficultés
  const difficulties: string[] = Array.from(new Set(hikes.map((hike: { difficulty: string }) => hike.difficulty)));



  return (
    <>
      <div className="hikes__filter">
        <Box sx={{ width: 200, mt: 3 }}>
          <FormControl fullWidth>
            <InputLabel id="demo-simple-select-label">Difficulté</InputLabel>
            <Select
              labelId="demo-simple-select-label"
              id="demo-simple-select"
              value={currentDifficulty}
              label="Difficulté"
              onChange={(event) =>
                dispatch(changeDifficulty(event.target.value))
              }
            >
              <MenuItem value={''}>
                <ArrowRightIcon />
                TOUTES
              </MenuItem>

              {difficulties?.map((location: string, index) => (
                <MenuItem key={index} value={location}>
                  {location}
                </MenuItem>
              ))}
            </Select>
          </FormControl>
        </Box>
      </div>
      <div className="hikes__filter">
        <Box sx={{ width: 200, mt: 3 }}>
          <FormControl fullWidth>
            <InputLabel id="demo-simple-select-label">Département</InputLabel>
            <Select
              labelId="demo-simple-select-label"
              id="demo-simple-select"
              value={currentLocation}
              label="Département"
              onChange={(event) =>
                dispatch(changeLocalisation(event.target.value))
              }
            >
              <MenuItem value={''}>
                <ArrowRightIcon />
                TOUS
              </MenuItem>

              {locations?.map((location, index) => (
                <MenuItem key={index} value={location}>
                  {location}
                </MenuItem>
              ))}
            </Select>
          </FormControl>
        </Box>
      </div>
    </>
  );
}

export default HikeFilters;
