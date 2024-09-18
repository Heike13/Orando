import { getBookmark } from '../../controllers/bookmarksController';
import bookmarksDataMappers from '../../dataMappers/bookmarksDataMappers';

jest.mock(
  '../../../projet-8-o-rando-back/app/dataMappers/bookmarksDataMappers'
);

describe('getBookmark', () => {
  let req, res, next;

  beforeEach(() => {
    req = {
      user: { id: 1 },
    };
    res = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };
    next = jest.fn();
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  it("should return the list of all user's bookmarks with status 200", async () => {
    const mockUserBookmarks = [
      { id: 1, name: 'Bookmark 1' },
      { id: 2, name: 'Bookmark 2' },
      { id: 3, name: 'Bookmark 3' },
    ];
    bookmarksDataMappers.getBookmark.mockResolvedValue(mockUserBookmarks);

    await getBookmark(req, res, next);

    expect(bookmarksDataMappers.getBookmark).toHaveBeenCalledWith(1);
    expect(res.status).toHaveBeenCalledWith(200);
    expect(res.json).toHaveBeenCalledWith(mockUserBookmarks);
  });

  it('should call next with an error if there is an exception', async () => {
    const error = new Error("passing error to next middleware");
    bookmarksDataMappers.getBookmark.mockRejectedValue(error);

    await getBookmark(req, res, next);

    expect(next).toHaveBeenCalledWith(error);
  });
});
