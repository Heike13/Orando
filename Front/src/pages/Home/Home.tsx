import { useAppSelector } from '../../hooks/redux';
import { Hike } from '../../@types/hike';
import './Home.scss';

// components
import SkeletonLoader from '../../components/SkeletonLoader/SkeletonLoader';
import CardComponent from '../../components/CardComponent/CardComponent';

// Le composant actuel est la page Accueil
export default function Home() {
  const hikes = useAppSelector((state) => state.hikesRandom.randomHikesList);
  const loading = useAppSelector((state) => state.hikesRandom.loading);

  // Le rendu final du composant
  return (
    <main className="home">
      <article>
        <figure>
          <img className="home__banner" loading="lazy" alt="" />

          <meta property="og:title" content="Photo de la Home-Page" />
        </figure>
        <h1 className="page_title">Bienvenue sur O&rsquo;Rando !</h1>
        <article className="home__text-presentation">
          Bienvenue sur O&rsquo;Rando, votre guide incontournable pour découvrir
          les plus beaux sentiers de{' '}
          <a
            className="lien_wiki"
            href="https://fr.wikipedia.org/wiki/Randonn%C3%A9e"
            target="_blank"
            rel="noreferrer"
          >
            randonnée
          </a>{' '}
          à travers notre magnifique pays. Que vous soyez un randonneur débutant
          ou un passionné expérimenté, notre site a été conçu pour répondre à
          toutes vos attentes et vous offrir une expérience inoubliable en
          pleine nature. Chez O&apos;Rando, nous croyons que chaque promenade
          est une opportunité de découvrir des paysages époustouflants, des
          trésors cachés et une biodiversité exceptionnelle. Notre mission est
          de vous aider à explorer les nombreux départements français, chacun
          offrant des itinéraires uniques et des aventures passionnantes.
          <br />
          <br />
          Notre plateforme propose une large gamme de randonnées soigneusement
          sélectionnées dans des régions variées, des sommets alpins majestueux
          aux collines verdoyantes du{' '}
          <a
            className="lien_wiki"
            href="https://fr.wikipedia.org/wiki/Massif_central"
            target="_blank"
            rel="noreferrer"
          >
            Massif Central
          </a>{' '}
          , en passant par les plages sauvages de la{' '}
          <a
            className="lien_wiki"
            href="https://fr.wikipedia.org/wiki/C%C3%B4te_atlantique_fran%C3%A7aise"
            target="_blank"
            rel="noreferrer"
          >
            Côte Atlantique
          </a>{' '}
          et les forêts enchantées des{' '}
          <a
            className="lien_wiki"
            href="https://fr.wikipedia.org/wiki/Vosges"
            target="_blank"
            rel="noreferrer"
          >
            Vosges
          </a>
          . Chaque randonnée est décrite en détail, avec des informations
          précises sur la distance, le dénivelé, la durée estimée et le niveau
          de difficulté.
          <br />
          <br />
          Nous comprenons que la préparation est essentielle pour une randonnée
          réussie. C&rsquo;est pourquoi O&rsquo;Rando met à votre disposition
          des cartes interactives et des conseils pratiques pour vous aider à
          planifier votre sortie en toute sérénité. Vous trouverez également des
          suggestions d&rsquo;équipements adaptés à chaque type de randonnée,
          qu&rsquo;il s&rsquo;agisse de courtes balades ou de{' '}
          <a
            className="lien_wiki"
            href="https://fr.wikipedia.org/wiki/Trekking"
            target="_blank"
            rel="noreferrer"
          >
            treks
          </a>{' '}
          de plusieurs jours.
          <br />
          <br />
          Embarquez avec nous pour une expérience enrichissante, ressourçante et
          pleine de découvertes. Prêt à enfiler vos chaussures de randonnée et à
          partir à l&rsquo;aventure ? Explorez notre site dès aujourd&rsquo;hui
          et trouvez votre prochaine randonnée idéale. O&apos;Rando : votre
          partenaire pour des escapades nature inoubliables à travers le pays !
          <br />
          <br />
        </article>
      </article>

      <h2 className="page_title">Quelques randonnées :</h2>
      <article className="cards__content">
        {loading ? (
          <SkeletonLoader skeletonNumber={4} />
        ) : (
          hikes.map((hike: Hike) => <CardComponent key={hike.id} {...hike} />)
        )}
      </article>
    </main>
  );
}
