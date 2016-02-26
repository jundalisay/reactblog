var NewArticle = React.createClass({
  handleClick() {
    debugger;

    let title = this.refs.title.value;
    let body = this.refs.body.value;

    $.ajax({
      url: '/api/v1/articles',
      type: 'POST',
      data: { article: { title: title, body: body } },
      success: (article) => {
        this.props.handleSubmit(article);
      }
    });
  },

  render() {
    return (
      <div>
        <input ref='title' placeholder='Enter Title' />
        <input ref='body' placeholder='Body' />
        <button onClick={this.handleClick} className="btn btn-success btn-sm">Submit</button>
      </div>
    )
  }
});