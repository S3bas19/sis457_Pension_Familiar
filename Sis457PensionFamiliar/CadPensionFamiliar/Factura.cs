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
    
    public partial class Factura
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Factura()
        {
            this.FacturaDetalle = new HashSet<FacturaDetalle>();
        }
    
        public int id { get; set; }
        public int idCliente { get; set; }
        public int idCamarero { get; set; }
        public int idMesa { get; set; }
        public System.DateTime fechaFactura { get; set; }
    
        public virtual Camarero Camarero { get; set; }
        public virtual Cliente Cliente { get; set; }
        public virtual Mesa Mesa { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FacturaDetalle> FacturaDetalle { get; set; }
    }
}