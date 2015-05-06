MERCADOPAGO_KEY = Configuration[:mercadopagos_client_id]
MERCADOPAGO_SECRET = Configuration[:mercadopagos_client_secret]
MERCADOPAGO_AUTH_URL = "https://auth.mercadolibre.com.co/authorization?client_id=#{MERCADOPAGO_KEY}&response_type=code&platform_id=mp&redirect_uri="