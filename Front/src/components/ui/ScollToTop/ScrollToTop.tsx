import { useEffect, useState } from 'react';
// import './ScrollToTop.scss';

export default function ScrollToTop() {
  // local state to make it easier to read, its an exception here
  const [show, setShowButton] = useState(false);

  // TODO utiliser un fire effect ici
  useEffect(() => {
    const handleScroll = () => {
      const scrollPosition = window.scrollY;
      if (scrollPosition > 1250) {
        setShowButton(true);
      } else {
        setShowButton(false);
      }
    };
    window.addEventListener('scroll', handleScroll);

    // cleanup after unmount
    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  return (
    <button
      onClick={() => window.scrollTo(0, 0)}
      className={
        show
          ? 'scroll-to-top-button show-button'
          : 'scroll-to-top-button no-show-button'
      }
      type="button"
    >
      {' '}
      &#x2B06; Top
    </button>
  );
}
