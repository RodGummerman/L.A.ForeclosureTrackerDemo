using System;
using System.Collections.Generic;

namespace L.A.ForeclosureTrackerDemoMvcAngular.Models;

public partial class TblPropertyType
{
    public int PropertyTypeId { get; set; }

    public string PropertyTypeDescription { get; set; } = null!;

    public virtual ICollection<TblProperty> TblProperties { get; set; } = new List<TblProperty>();
}
