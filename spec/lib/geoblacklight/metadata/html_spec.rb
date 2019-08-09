require 'spec_helper'

describe Geoblacklight::Metadata::Html do
  let(:url) { 'https://s3.amazonaws.com/cugir-data/00/77/41/fgdc.html' }
  let(:metadata) do
    described_class.new(
      Geoblacklight::Reference.new('type' => 'HTML', 'url' => url)
    )
  end

  describe '#transform' do
    it 'renders an iframe with the html endpoint' do
      expect(metadata.transform).to include('iframe', url)
    end
  end
end
