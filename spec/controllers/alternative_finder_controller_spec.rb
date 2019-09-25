require 'spec_helper'

describe AlternativeFinderController do
  render_views

  it 'renders the file from the alternative directory' do
    get :show, params: { id: 'ebg13' }

    expect(response).to be_successful
    expect(response).to render_template('rot13')
  end
end
