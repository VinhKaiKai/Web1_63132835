//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace project_63132835.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChiTietDonHang
    {
        public Nullable<int> SoLuong { get; set; }
        public string DonGia { get; set; }
        public int MaDonHang { get; set; }
        public int MaSach { get; set; }
    
        public virtual DonHang DonHang { get; set; }
        public virtual Sach Sach { get; set; }
    }
}