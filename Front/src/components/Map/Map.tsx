import { useEffect, useRef } from 'react';
import maplibregl from 'maplibre-gl';
import 'maplibre-gl/dist/maplibre-gl.css';
import './Map.scss';

type GeoDatasProps = {
  geoDatas: string;
};

export default function Map({ geoDatas }: GeoDatasProps) {
  const mapContainerRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const controller = new AbortController();
    const { signal } = controller;

    const initializeMap = () => {
      if (mapContainerRef.current) {
        const map = new maplibregl.Map({
          container: mapContainerRef.current,
          style:
            'https://api.maptiler.com/maps/bright/style.json?key=lKoHqTSlrjjlLkJx0OIm',
          center: [-0.187961, 45.03991],
          zoom: 12,
        });

        map.on('load', () => {
          try {
            const parsedData = JSON.parse(geoDatas);
    // Log des données GeoJSON dans la console pour vérification
    console.log('Données GeoJSON:', parsedData);
            map.addSource('route', {
              type: 'geojson',
              data: parsedData,
            });

            map.addLayer({
              id: 'route',
              type: 'line',
              source: 'route',
              layout: {
                'line-join': 'round',
                'line-cap': 'round',
              },
              paint: {
                'line-color': '#0000FF',
                'line-width': 3,
              },
            });

            const coordinates = parsedData.coordinates;
    // Log des coordonnées spécifiques pour analyse
    console.log('Coordonnées de l\'itinéraire:', coordinates);

            const bounds = coordinates.reduce(
              (bounds: any, coord: any) => bounds.extend(coord),
              new maplibregl.LngLatBounds(coordinates[0], coordinates[0])
            );

            map.fitBounds(bounds, {
              padding: 20,
            });
          } catch (error) {
            console.error('Invalid GeoJSON data', error);
          }
        });

        // Nettoyage lors du démontage du composant
        return () => {
          map.remove();
        };
      }
    };

    initializeMap();

    return () => {
      controller.abort();
    };
  }, [geoDatas]);

  return (
    <div className="map-wrapper">
      <div ref={mapContainerRef} className="map-container" />
    </div>
  );
}
