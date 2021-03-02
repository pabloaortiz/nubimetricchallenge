using Microsoft.Extensions.Options;
using System;

namespace Challenge.MercadoLibre
{
    public class MercadoLibreService
    {
        private readonly Settings.MercadoLlibreSettings _mercadolibreSettings;

        public MercadoLibreService(IOptions<Settings.MercadoLlibreSettings> mercadolibreSettings)
        {
            _mercadolibreSettings = mercadolibreSettings.Value;
        }

        private Logic.Busqueda _busqueda;
        public Logic.Busqueda Busqueda
        {
            get
            {
                if (_busqueda == null)
                {
                    _busqueda = new Logic.Busqueda(_mercadolibreSettings.ApiUrl);
                }
                return _busqueda;
            }
        }

        private Logic.Monedas _monedas;
        public Logic.Monedas Monedas
        {
            get
            {
                if (_monedas == null)
                {
                    _monedas = new Logic.Monedas(_mercadolibreSettings.ApiUrl);
                }
                return _monedas;
            }
        }

        private Logic.Paises _paises;

        public Logic.Paises Paises
        {
            get
            {
                if (_paises == null)
                {
                    _paises = new Logic.Paises(_mercadolibreSettings.ApiUrl);
                }
                return _paises;
            }
        }
    }
}
