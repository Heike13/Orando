export type Location = {
  pathname: string;
};

export interface Hike {
  id: number;
  slug: string;
  title: string;
  description: string;
  pictures: string[];
  details: string;
  distance: number;
  time: number;
  difficulty: string;
  localisation: string;
  gps_coordinate: string;
  created_at: string;
  updated_at: string | null;
}
