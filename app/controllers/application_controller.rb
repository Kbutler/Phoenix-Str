class ApplicationController < ActionController::Base
  before_filter :set_i18n_locale_from_params
  protect_from_forgery

  before_filter :get_jobtitle_p1
  def get_jobtitle_p1
    @job_title_p1 = "Praxis fur Frauenheilkunde "
  end

  before_filter :get_jobtitle_p2
  def get_jobtitle_p2
    @job_title_p2 = "Geburtshilfe"
  end

  before_filter :get_full_name
  def get_full_name
    @full_name = "Dr med. Forename Surename"
  end

  before_filter :get_logo_img
  def get_logo_img
    @logo_img = "logo.gif"
  end

  before_filter :get_favicon_img
  def get_favicon_img
    @favicon_img = "favicon.ico"
  end

  before_filter :get_address
  def get_address
    @address = "Add the address here"
  end

  before_filter :get_phone_number
  def get_phone_number
    @phone_number = "Tel: +11 123 456 789"
  end

  before_filter :get_fax_number
  def get_fax_number
    @fax_number = "Fax: +22 123 456 789"
  end

  protected
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
