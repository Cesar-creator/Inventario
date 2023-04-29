module MovementsHelper
  def search_prov_name(prov_id)
    @prov = Proveedor.find(prov_id)
    @prov.nombre
  end

  def search_client_cedula(client_id)
    @client = Client.find(client_id)
    @client.cedula
  end
end
