# coding: utf-8
class Admin::MercadoPagoClientsController < ApplicationController
  inherit_resources

  protected
  def permitted_params
    params.permit(policy(resource).permitted_attributes)
  end

  def resource
    @project ||= (params[:permalink].present? ? MercadoPagoClient.by_permalink(params[:permalink]).first! : MercadoPagoClient.find(params[:id]))
  end

end
