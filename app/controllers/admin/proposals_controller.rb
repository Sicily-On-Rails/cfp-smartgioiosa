class Admin::ProposalsController < Admin::ApplicationController
    before_action :set_user
    before_action :set_proposal, only: [:show, :edit, :update, :destroy]

    # GET /proposals
    # GET /proposals.json
    def index
      @proposals = Proposal.all
    end

    # GET /proposals/1
    # GET /proposals/1.json
    def show
    end

    # GET /proposals/new
    def new
      @proposal = @user.proposals.new
      @proposal.build_referent
    end

    # GET /proposals/1/edit
    def edit
    end

    # POST /proposals
    # POST /proposals.json
    def create
      @proposal = @user.proposals.new(proposal_params)

      respond_to do |format|
        if @proposal.save
          format.html { redirect_to @proposal, notice: 'Proposal was successfully created.' }
          format.json { render :show, status: :created, location: @proposal }
        else
          format.html { render :new }
          format.json { render json: @proposal.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /proposals/1
    # PATCH/PUT /proposals/1.json
    def update
      respond_to do |format|
        if @proposal.update(proposal_params)
          format.html { redirect_to @proposal, notice: 'Proposal was successfully updated.' }
          format.json { render :show, status: :ok, location: @proposal }
        else
          format.html { render :edit }
          format.json { render json: @proposal.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /proposals/1
    # DELETE /proposals/1.json
    def destroy
      @proposal.destroy
      respond_to do |format|
        format.html { redirect_to proposals_url, notice: 'Proposal was successfully destroyed.' }
        format.json { head :no_content }
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
