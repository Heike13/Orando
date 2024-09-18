import morgan from 'morgan';
import fileStreamRotator from 'file-stream-rotator';
import { join } from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Crée un flux de rotation de fichier
const accessLogStream = fileStreamRotator.getStream({
  filename: join(__dirname, '../../log/access-%DATE%.log'),
  frequency: 'daily',
  date_format: 'YYYY-MM-DD',
  size: '10M', // Taille maximale du fichier avant rotation
  max_logs: '7d', // Conserver les logs des 7 derniers jours
  compress: 'gzip', // Compresser les fichiers de log
  audit_file: false
});

// Middleware de journalisation
const logger = morgan('combined', { stream: accessLogStream });

export default logger;
