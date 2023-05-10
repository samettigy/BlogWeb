using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLHAKKIMDATableAdapter dt = new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();
            Repeater1.DataSource = dt.HakkimdaListele();
            Repeater1.DataBind();



            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt2 = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            Repeater2.DataSource = dt2.DeneyimListesi();
            Repeater2.DataBind();



            DataSet1TableAdapters.TBLEGITIMTableAdapter dt3 = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            Repeater3.DataSource = dt3.EgitimListesi();
            Repeater3.DataBind();



            DataSet1TableAdapters.TBLHOBILERTableAdapter dt4 = new DataSet1TableAdapters.TBLHOBILERTableAdapter();
            Repeater5.DataSource = dt4.HobiListesi();
            Repeater5.DataBind();



            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt5 = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
            Repeater4.DataSource = dt5.SertifikaListesi();
            Repeater4.DataBind();



            DataSet1TableAdapters.TBLYETENEKLERTableAdapter dt6 = new DataSet1TableAdapters.TBLYETENEKLERTableAdapter();
            Repeater6.DataSource = dt6.YetenekListesi();
            Repeater6.DataBind();

        }
    }
}