﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Personel_Kayit
{
    public partial class FrmGiris : Form
    {
        public FrmGiris()
        {
            InitializeComponent();
        }
        SqlConnection baglanti =
            new SqlConnection("Data Source=MGURIDEAPAD;Initial Catalog=PersonelDb;User ID=sa;Password=Gr1724Gr");

        private void btnGiris_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut =
                new SqlCommand("Select * From Tbl_Yonetici where KullaniciAd=@p1 and Sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", txtKullaniciAdi.Text);
            komut.Parameters.AddWithValue("@p2", txtPass.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                FrmAnaForm frm = new FrmAnaForm();
                frm.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Kullanıcı Adı ya da Şifre Hatalı !! ");
            }

            baglanti.Close();
        }
    }
}
