/* eslint-disable react/no-array-index-key */
import './HikeDetail.scss';

// Components
import Slider from 'react-slick';
import Zoom from 'react-medium-image-zoom';
import Map from '../Map/Map';
import 'react-medium-image-zoom/dist/styles.css';

// utils
import { formatHikeTime } from '../../utils/regEx';
import { Hike } from '../../@types/hike';

type HikeDetailProps = {
  hike: Hike;
};

// The actual component
function HikeDetail({ hike }: HikeDetailProps) {
  const geoDatas = hike.gps_coordinate;

  // Traitement du texte de l'itinéraire
  const regex = /\(\d+\)/g;
  const text = hike.details;
  const formatedDetails = text.replace(regex, (match) => `\n${match}`);
  const lines = formatedDetails.split('\n');

  const sliderSettings = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 3000,
    adaptiveHeight: true,
    centerMode: true,
    centerPadding: '0',
    arrows: true,
  };

  return (
    <>
      <header className="hike__header">
        <h1>{hike.title}</h1>
        <h2 className="hike__subtitle">Description :</h2>
        <span className="hike__description">{hike.description}</span>
      </header>
      <main>
        <section
          className="hike__pictures"
          aria-label="Photos qui présentent divers points de vue de la randonnée"
        >
          <Slider {...sliderSettings}>
            {hike.pictures.map((picture) => (
              <section key={picture}>
                <Zoom>
                  <figure>
                    <img
                      className="slide-image"
                      src={picture}
                      alt={hike.title}
                    />
                    <figcaption hidden>{hike.description}</figcaption>
                    <meta property="og:title" content={hike.title} />
                    <meta property="og:type" content="photo" />
                    <meta
                      property="og:description"
                      content={hike.description}
                      hidden
                    />
                    <meta property="og:site_name" content="O'Rando" />
                  </figure>
                </Zoom>
              </section>
            ))}
          </Slider>
        </section>
        <section className="hike__tags">
          <span className="hike__tags-localisation">{hike.localisation}</span>
          <span className="hike__tags-difficulty">{hike.difficulty}</span>
          <span className="hike__tags-time">{formatHikeTime(hike.time)}</span>
          <span className="hike__tags-distance">{hike.distance} kms</span>
        </section>
        <section className="hike__details">
          <h3>Infos pratiques et itinéraire :</h3>
          {lines.map((line, index) => (
            <p key={index}>{line}</p>
          ))}
        </section>
        <section className="hike__map">
          <Map geoDatas={geoDatas} />
        </section>
        <footer className="hike__footer" />
      </main>
    </>
  );
}

export default HikeDetail;
