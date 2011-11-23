class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_i18n_locale_from_params
  before_filter :get_app_vars

  protected
  def get_app_vars
    @job_title_p1 = "Praxis fur Frauenheilkunde "
    @job_title_p2 = "Geburtshilfe"
    @full_name    = "Dr med. Forename Surename"
    @logo_img     = "logo.gif"
    @favicon_img  = "favicon.ico"
    @address      = "Add the address here"
    @phone_number = "Tel: +11 123 456 789"
    @fax_number   = "Fax: +22 123 456 789"
  end

  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = "#{params[:locale]} translation not available"
        logger.error flash.now[:notice]
      end
    end
  end

  def default_url_options
    { locale: I18n.locale }
  end

end
