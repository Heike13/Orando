// imports MUI
import Skeleton from '@mui/joy/Skeleton/Skeleton';
import Box from '@mui/joy/Box/Box';

export type SkeletonProps = {
  skeletonNumber: number;
};

function SkeletonLoader({ skeletonNumber }: SkeletonProps) {
  const skeletons = [];
  for (let i = 0; i < skeletonNumber; i++) {
    skeletons.push(
      <Box key={i}>
        <Skeleton variant="rectangular" width={480} height={700} />
        <Skeleton variant="text" sx={{ fontSize: '2rem', width: 480 }} />
        <Skeleton variant="rectangular" width={480} height={80} />
      </Box>
    );
  }

  return <div className="skeleton__loader">{skeletons}</div>;
}

export default SkeletonLoader;
