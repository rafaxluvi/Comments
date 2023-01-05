  public interface ICommentService
    {
        int Add(CommentAddRequest model, int userId);
        void Update(CommentUpdateRequest model, int userId);
        List<Comment> GetNestedComments(int entityId, int entityTypeId);
        void Delete(int id);
        List<Comment> SelectByCreatedBy(int id);
    }
