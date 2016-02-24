var AllArticles = React.createClass({
  handleDelete(id) {
    this.props.handleDelete(id);
  },

  onUpdate(article) {
    this.props.onUpdate(article);
  },

  render() {
    let articles = this.props.articles.map((article, index) => {
      return (
        <div key={index}>
          <Article article={article}
                 handleDelete={this.handleDelete.bind(this, article.id)}
                 handleUpdate={this.onUpdate}/>
        </div>
      )
    });

    return (
      <div>
        {articles}
      </div>
    )
  }
});