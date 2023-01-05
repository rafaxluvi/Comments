    public class CommentAddRequest
    {
        [StringLength(50)]
        public string Subject { get; set; }

        [Required]
        [StringLength(3000, MinimumLength = 10)]
        public string Text { get; set; }
  
        public int? ParentId { get; set; }

        [Required]
        [Range(1, Int32.MaxValue)]
        public int EntityTypeId { get; set; }

        [Required]
        [Range(1, Int32.MaxValue)]
        public int EntityId { get; set; }
    }
