import { Favorite } from '@mui/icons-material';
import { IconButton } from '@mui/material';
import FavoriteBorder from '@mui/icons-material/FavoriteBorder';
import { useAppDispatch, useAppSelector } from '../../hooks/redux';
import { addBookmark, deleteBookmark } from '../../store/reducers/bookmarks';
import { Hike } from '../../@types/hike';

export type BookmarksProps = {
  id: number;
};

// ------------------------------- Le composant actuel
export default function Bookmarks({ id }: BookmarksProps) {
  const dispatch = useAppDispatch();
  const bookmarks = useAppSelector((state) => state.bookmarks.bookmarks);

  function handleClick() {
    if (bookmarks.find((bookmark: Hike) => bookmark.id === id)) {
      dispatch(deleteBookmark(id));
    } else {
      dispatch(addBookmark(id));
    }
  }

  const isFavorite = bookmarks.some((bookmark: Hike) => bookmark.id === id);

  const buttonStyles = {
    position: 'absolute',
    backgroundColor: 'whitesmoke',
    zIndex: 2000,
    borderRadius: '50%',
    width: '2.5rem',
    height: '2.5rem',
    right: '0.4em',
    top: '0.4em',
    transform: 'translateY(0%)',
    color: 'red',
    '&:hover': { color: '#da7b29' },
  };

  const favoriteButton = (
    <IconButton
      onClick={() => handleClick()}
      aria-label="Like minimal photography"
      size="small"
      sx={buttonStyles}
    >
      <Favorite />
    </IconButton>
  );

  const favoriteBorderButton = (
    <IconButton
      onClick={() => handleClick()}
      aria-label="Like minimal photography"
      size="small"
      sx={{ ...buttonStyles, backgroundColor: 'white' }}
    >
      <FavoriteBorder />
    </IconButton>
  );

  return isFavorite ? favoriteButton : favoriteBorderButton;
}
