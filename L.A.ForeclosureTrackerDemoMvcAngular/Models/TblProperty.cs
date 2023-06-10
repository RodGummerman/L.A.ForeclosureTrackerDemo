using System;
using System.Collections.Generic;

namespace L.A.ForeclosureTrackerDemoMvcAngular.Models;

public partial class TblProperty
{
    public int PropertyId { get; set; }

    public long PropertyAssessorParcelNumber { get; set; }

    public int PropertyTypeId { get; set; }

    public string PropertyStreetAddress { get; set; } = null!;

    public string PropertyCity { get; set; } = null!;

    public string PropertyState { get; set; } = null!;

    public string PropertyZipCode { get; set; } = null!;

    public string PropertyLongitude { get; set; } = null!;

    public string PropertyLatitude { get; set; } = null!;

    public string PropertyPointOnMap { get; set; } = null!;

    public int CityCouncilDistrictId { get; set; }

    public DateTime PropertyForeclosureRegisteredDate { get; set; }

    public int LenderId { get; set; }

    public int PropertyManagementCompanyId { get; set; }

    public virtual TblLender Lender { get; set; } = null!;

    public virtual TblPropertyManagementCompany PropertyManagementCompany { get; set; } = null!;

    public virtual TblPropertyType PropertyType { get; set; } = null!;
}
