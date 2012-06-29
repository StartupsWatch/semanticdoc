class Admin::SemanticSchemasController < Admin::ApplicationController
  respond_to :html
  def new
    @semantic_schema = SemanticSchema.new
    
    3.times do
      @semantic_schema.properties.build
    end
  end
  
  def create
    @semantic_schema = SemanticSchema.new(params[:semantic_schema])
    if @semantic_schema.save
      redirect_to admin_semantic_schema_path(@semantic_schema), :notice => "Successfully created semantic schema."
    else
      render :action => 'new'
    end
  end
  
  def edit
    @semantic_schema = SemanticSchema.find(params[:id])
  end
  
  def update
    @semantic_schema = SemanticSchema.find(params[:id])
    if @semantic_schema.update_attributes(params[:semantic_schema])
      redirect_to admin_semantic_schema_path(@semantic_schema), :notice  => "Successfully updated semantic schema."
    else
      render :action => 'edit'
    end
  end
  
  def show
    @semantic_schema = SemanticSchema.find(params[:id])
  end
  
  def index
    @semantic_schemas = SemanticSchema.roots
  end
end