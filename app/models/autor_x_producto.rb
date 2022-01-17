#--
#
#################################################################################
# LibreTPV - Gestor TPV para Librerias
# Copyright 2011-2022 Santiago Ramos <sramos@sitiodistinto.net> 
#
#    Este programa es software libre: usted puede redistribuirlo y/o modificarlo 
#    bajo los términos de la Licencia Pública General GNU publicada 
#    por la Fundación para el Software Libre, ya sea la versión 3 
#    de la Licencia, o (a su elección) cualquier versión posterior.
#
#    Este programa se distribuye con la esperanza de que sea útil, pero 
#    SIN GARANTÍA ALGUNA; ni siquiera la garantía implícita 
#    MERCANTIL o de APTITUD PARA UN PROPÓSITO DETERMINADO. 
#    Consulte los detalles de la Licencia Pública General GNU para obtener 
#    una información más detallada. 
#
#    Debería haber recibido una copia de la Licencia Pública General GNU 
#    junto a este programa. 
#    En caso contrario, consulte <http://www.gnu.org/licenses/>.
#################################################################################
#
#++


class AutorXProducto < ApplicationRecord 

  belongs_to :autor
  belongs_to :producto

  validates_presence_of :autor_id, :message => "Autor no puede estar vacío."
  validates_presence_of :producto_id, :message => "Producto no puede estar vacío."
  validates_uniqueness_of :autor_id, :scope => :producto_id, :message => "Autor repetido."
end
