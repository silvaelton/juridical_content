module Internal
  class Article < ::Article

    attr_accessor :author_ids, :coauthor_ids, :collaborator_ids

    validates :title, :content, :author_ids, :category_ids, presence: true
    
    after_commit :set_authors

    private

    def set_authors
      self.article_authors.destroy_all

      update_collection!('autor', self.author_ids)  if self.author_ids.present?
      update_collection!('co_autor', self.coauthor_ids) if self.coauthor_ids.present?
      update_collection!('colaborador', self.collaborator_ids) if self.collaborator_ids.present?
    end

    def update_collection! type, collection
      collection.each do |author_id|
        self.article_authors.new({
          user_id: author_id,
          author_type: type
        }).save
      end
    end


  end
end