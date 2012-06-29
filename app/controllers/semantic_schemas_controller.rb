class SemanticSchemasController < ApplicationController
  def show
    @semantic_schema = SemanticSchema.find(params[:id])
  end

  def index
    @semantic_schemas = SemanticSchema.roots
  end
end