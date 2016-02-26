var Article = React.createClass({
  getInitialState() {
    return { editable: false }
  },

  onUpdate() {
    if (this.state.editable) {
      let article   = { id: this.props.article.id,
                      title: this.refs.title.value,
                      body: this.refs.body.value }

      this.props.handleUpdate(article);
    }

    this.setState({ editable: !this.state.editable })
  },

  render() {
    var title = this.state.editable ? <input type='text'
                                            ref='title'
                                            defaultValue={this.props.article.title} />
                                   : <h3>{this.props.article.title}</h3>

    let body = this.state.editable ? <textarea type='text'
                                                  ref='body'
                                                  defaultValue={this.props.article.body}>
                                        </textarea>
                                      : <p>{this.props.article.body}</p>
    return (
      <div class="panel panel-default">
        <div class="panel panel-heading">
          {title}
        </div>
        <div class="panel-body">
          {body}
        </div>

          <button onClick={this.props.handleDelete} className="btn btn-danger btn-sm">
            Delete
          </button>

          <button onClick={this.onUpdate} className="btn btn-warning btn-sm">{this.state.editable ? 'Submit' : 'Edit' }</button>
      </div>
    )
  }
});