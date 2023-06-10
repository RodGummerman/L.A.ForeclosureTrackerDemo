using System;
using System.Collections.Generic;

namespace L.A.ForeclosureTrackerDemoMvcAngular.Models;

public partial class TblPropertyManagementCompany
{
    public int PropertyManagementCompanyId { get; set; }

    public string PropertyManagementCompanyName { get; set; } = null!;

    public string PropertyManagementCompanyContact { get; set; } = null!;

    public string PropertyManagementCompanyContactPhone { get; set; } = null!;

    public string PropertyManagementCompanyAddress { get; set; } = null!;

    public virtual ICollection<TblProperty> TblProperties { get; set; } = new List<TblProperty>();
}
