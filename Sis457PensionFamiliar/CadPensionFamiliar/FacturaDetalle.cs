//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CadPensionFamiliar
{
    using System;
    using System.Collections.Generic;
    
    public partial class FacturaDetalle
    {
        public int id { get; set; }
        public int idFactura { get; set; }
        public int idCocinero { get; set; }
        public int idMenu { get; set; }
        public decimal importe { get; set; }
    
        public virtual Cocinero Cocinero { get; set; }
        public virtual Factura Factura { get; set; }
        public virtual Menu Menu { get; set; }
    }
}