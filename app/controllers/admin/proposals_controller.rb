class Admin::ProposalsController < Admin::ApplicationController
  before_action :set_user
  before_action :set_proposal, only: [:show, :edit, :update, :destroy]

  # GET /proposals/1
  # GET /proposals/1.json
  def show
  end

  # GET /proposals/new
  def new
    @proposal = @user.proposals.new
    @proposal.build_referent
  end


  # POST /proposals
  # POST /proposals.json
  def create
    @proposal = @user.proposals.new(proposal_params)

    respond_to do |format|
      if @proposal.save
        format.html { redirect_to @proposal, notice: 'Proposta inseritta correttamente.' }
        format.json { render :show, status: :created, location: @proposal }
      else
        format.html { render :new }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal
      @proposal = Proposal.find(params[:id])
    end

    def set_user
      @user = current_user
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def proposal_params
      params.require(:proposal).permit(:user_id, :file, :remove_file, :title, :description, :category_id, :team_name, :privacy, :attachments, :answer1, :answer2, :detailed_description, members_attributes:[:proposal_id, :name, :surname, :profession, :_destroy, :id], referent_attributes:[:proposal_id, :name, :surname, :email, :id])
    end
end
