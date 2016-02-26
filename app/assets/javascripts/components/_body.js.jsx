var Body = React.createClass({
  getInitialState() {
    return { articles: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/articles.json', (response) => { this.setState({ articles: response }) });
  },

  handleSubmit(article) {
    let newState = this.state.articles.concat(article);
    this.setState({ articles: newState })
  },

  handleDelete(id) {
    $.ajax({
      url: `/api/v1/articles/${id}`,
      type: 'DELETE',
      success: () => {
        this.removeIdeaFromDOM(id);
      }
    });
  },

  removeIdeaFromDOM(id) {
    let newArticles = this.state.articles.filter((article) => {
      return article.id != id;
    });

    this.setState({ articles: newArticles });
  },

  handleUpdate(article) {
    $.ajax({
      url: `/api/v1/articles/${article.id}`,
      type: 'PUT',
      data: { article: article },
      success: (article) => {
        this.updateArticles(article)
      }
    });
  },

  updateArticles(article) {
    let articles = this.state.articles.filter((s) => { return s.id != article.id });
    articles.push(article);

    this.setState({ articles: articles });
  },

  render() {
    return (
      <div>
      Post Title
        <NewArticle handleSubmit={this.handleSubmit} />
        <AllArticles articles={this.state.articles}
                   handleDelete={this.handleDelete}
                   onUpdate={this.handleUpdate} />
      </div>
    )
  }
});