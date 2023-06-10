using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace L.A.ForeclosureTrackerDemoMvcAngular.Models;

public partial class LAForeclosureTrackerDemoDbContext : DbContext
{
    public LAForeclosureTrackerDemoDbContext()
    {
    }

    public LAForeclosureTrackerDemoDbContext(DbContextOptions<LAForeclosureTrackerDemoDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<TblCityCouncilDistrict> TblCityCouncilDistricts { get; set; }

    public virtual DbSet<TblLender> TblLenders { get; set; }

    public virtual DbSet<TblProperty> TblProperties { get; set; }

    public virtual DbSet<TblPropertyManagementCompany> TblPropertyManagementCompanies { get; set; }

    public virtual DbSet<TblPropertyType> TblPropertyTypes { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=RODDEV\\RODDEVSQLSERVER;Initial Catalog=L.A.ForeclosureTrackerDemoDB;Integrated Security=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<TblCityCouncilDistrict>(entity =>
        {
            entity.HasKey(e => e.CityCouncilDistrictId).HasName("PK__tmp_ms_x__354E47846117AAD5");

            entity.ToTable("tblCityCouncilDistricts");

            entity.Property(e => e.CityCouncilDistrictId)
                .ValueGeneratedNever()
                .HasColumnName("CityCouncilDistrictID");
            entity.Property(e => e.CityCouncilDistrictName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
        });

        modelBuilder.Entity<TblLender>(entity =>
        {
            entity.HasKey(e => e.LenderId).HasName("PK__tblLende__9E3E504BD74B950B");

            entity.ToTable("tblLenders");

            entity.Property(e => e.LenderId).HasColumnName("LenderID");
            entity.Property(e => e.LenderContact)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.LenderContactPhone)
                .HasMaxLength(12)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.LenderName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
        });

        modelBuilder.Entity<TblProperty>(entity =>
        {
            entity.HasKey(e => e.PropertyId).HasName("PK__tmp_ms_x__70C9A7559367224E");

            entity.ToTable("tblProperties");

            entity.Property(e => e.PropertyId).HasColumnName("PropertyID");
            entity.Property(e => e.CityCouncilDistrictId).HasColumnName("CityCouncilDistrictID");
            entity.Property(e => e.LenderId).HasColumnName("LenderID");
            entity.Property(e => e.PropertyCity)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.PropertyForeclosureRegisteredDate).HasColumnType("date");
            entity.Property(e => e.PropertyLatitude)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.PropertyLongitude)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.PropertyManagementCompanyId).HasColumnName("PropertyManagementCompanyID");
            entity.Property(e => e.PropertyPointOnMap)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.PropertyState)
                .HasMaxLength(2)
                .IsUnicode(false)
                .IsFixedLength();
            entity.Property(e => e.PropertyStreetAddress)
                .HasMaxLength(200)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.PropertyTypeId).HasColumnName("PropertyTypeID");
            entity.Property(e => e.PropertyZipCode)
                .HasMaxLength(11)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");

            entity.HasOne(d => d.Lender).WithMany(p => p.TblProperties)
                .HasForeignKey(d => d.LenderId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_tblProperties_tblLenders");

            entity.HasOne(d => d.PropertyManagementCompany).WithMany(p => p.TblProperties)
                .HasForeignKey(d => d.PropertyManagementCompanyId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_tblProperties_tblPropertyManagementCompanies");

            entity.HasOne(d => d.PropertyType).WithMany(p => p.TblProperties)
                .HasForeignKey(d => d.PropertyTypeId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_tblProperties_tblPropertyTypes");
        });

        modelBuilder.Entity<TblPropertyManagementCompany>(entity =>
        {
            entity.HasKey(e => e.PropertyManagementCompanyId).HasName("PK__tblPrope__8AC60D1F7C618F41");

            entity.ToTable("tblPropertyManagementCompanies");

            entity.Property(e => e.PropertyManagementCompanyId).HasColumnName("PropertyManagementCompanyID");
            entity.Property(e => e.PropertyManagementCompanyAddress)
                .HasMaxLength(200)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.PropertyManagementCompanyContact)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.PropertyManagementCompanyContactPhone)
                .HasMaxLength(12)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.PropertyManagementCompanyName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
        });

        modelBuilder.Entity<TblPropertyType>(entity =>
        {
            entity.HasKey(e => e.PropertyTypeId).HasName("PK__tblPrope__BDE14DD4DAC73DE1");

            entity.ToTable("tblPropertyTypes");

            entity.Property(e => e.PropertyTypeId).HasColumnName("PropertyTypeID");
            entity.Property(e => e.PropertyTypeDescription)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
