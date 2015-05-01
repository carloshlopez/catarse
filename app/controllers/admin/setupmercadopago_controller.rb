class Admin::SetupmercadopagoController < Admin::BaseController
  layout 'catarse_bootstrap'
  # add_to_menu "admin.setup_pagos.index.menu", :admin_setupmercadopago
  before_filter :set_title


  def setup
    if params[:render_iframe]
      @src_iframe = "https://auth.mercadolibre.com.ar/authorization?client_id=4750269945802765&response_type=code&platform_id=mp&redirect_uri=http://sumame-test.herokuapp.com?#{params[:client_email]}"
      @render_iframe = true
    else
      @render_iframe = false
    end

  end

  protected
  def set_title
    @title = t("admin.setup_pagos.title")
  end
end

