# encoding: utf-8

class ValidatorsController < InheritedResources::Base
  def conectando_corazones
    @validator = Validator.find_by_name("Conexión Colombia")
    @campaign = @validator.campaigns.first
    @projects = @campaign.projects
    #@proj_med = @campaign.projects.first
    @proj_med = @campaign.projects.find_by_name("Conecta tu corazón con Medellín")
    @proj_cali = @campaign.projects.find_by_name("Conecta tu corazón con Cali")
    @proj_bog = @campaign.projects.find_by_name("Conecta tu corazón con Bogotá")
    @proj_neiva = @campaign.projects.find_by_name("Conecta tu corazón con Neiva")
    @proj_cucuta = @campaign.projects.find_by_name("Conecta tu corazón con Cúcuta")
    @proj_buc = @campaign.projects.find_by_name("Conecta tu corazón con Bucaramanga")
    #@proj_pereira = @campaign.projects.find_by_name("Conecta tu corazón con Pereira")
    #@proj_cart = @campaign.projects.find_by_name("Conecta tu corazón con Cartagena")
    #@proj_quilla = @campaign.projects.find_by_name("Conecta tu corazón con Barranquilla")

    #@projects = @validator.projects
  end
end
