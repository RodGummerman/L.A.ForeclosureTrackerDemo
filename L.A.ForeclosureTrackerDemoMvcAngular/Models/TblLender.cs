using System;
using System.Collections.Generic;

namespace L.A.ForeclosureTrackerDemoMvcAngular.Models;

public partial class TblLender
{
    public int LenderId { get; set; }

    public string LenderName { get; set; } = null!;

    public string LenderContact { get; set; } = null!;

    public string LenderContactPhone { get; set; } = null!;

    public virtual ICollection<TblProperty> TblProperties { get; set; } = new List<TblProperty>();
}
