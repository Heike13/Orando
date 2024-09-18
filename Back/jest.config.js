/**
 * @type {import('@jest/types').Config.InitialOptions}
 */

export default {
    testEnvironment: 'node',
    roots: ['<rootDir>/app/services/tests'],
    testMatch: ['**/tests/**/*.(test|spec).js'],
    collectCoverage: true,
    coverageDirectory: 'coverage',
    coverageReporters: ['json', 'lcov', 'text', 'clover'],
    transform: {
      '^.+\\.js$': 'babel-jest',
    },
    moduleNameMapper: {
      '^(\\.{1,2}/.*)\\.js$': '$1',
    },
  };
  