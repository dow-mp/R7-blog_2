class PagesController < ApplicationController
    def index
        @pages = Page.all
    end

    def show
        # defining the page instance variable for use in the show.html.erb file to display the data for the matching id (finding the appropriate page based on the paramater that is passed along in the url path - accessible by params[:id])
        @page = Page.find(params[:id])
    end

    def new
        @page = Page.new
    end

    def create
        # page_params = params.require(:page).permit(:title, :body, :slug)
        # because we need access to these page_params in both the create and update methods, we can abstract away accessing these params by defining a private page_params method below which returns an object with the required/permitted params, any calls to page_params will now be treated as a call to the page_params method (instead of a variable)
        @page = Page.new(page_params)
        @page.save

        redirect_to @page #redirect to the show view, passing the page instance variable
    end

    def edit
        @page = Page.find(params[:id]) # we do not need to worry about strong params here bc we are only calling on 1 param and we explicitly specify which param we're using here
    end

    def update
        @page = Page.find(params[:id])
        # page_params = params.require(:page).permit(:title, :body, :slug)
        @page.update(page_params)
        redirect_to @page
    end

    def destroy
        @page = Page.find(params[:id])
        @page.destroy

        redirect_to pages_path
    end


    private # marking methods private that should only be used inside the PagesController class - therefore it cannot be called from anywhere else
    # all methods following this keyword will be marked private
        def page_params
            params.require(:page).permit(:title, :body, :slug)
        end
end
