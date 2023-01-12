using System;
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
    public partial class FrmAnaForm : Form
    {
        public FrmAnaForm()
        {
            InitializeComponent();
        }
        // Global Alan

        SqlConnection baglanti =
            new SqlConnection("Data Source=MGURIDEAPAD;Initial Catalog=PersonelDb;User ID=sa;Password=Gr1724Gr");

        void temizle()
        {
            txtId.Text = "";
            txtPerAd.Text = "";
            txtPerSoyad.Text = "";
            txtPerMeslek.Text = "";
            mskdTxtPerMaas.Text = "";
            cmbBxPerSehir.Text = "";
            radioButton1.Checked = false;
            radioButton2.Checked = false;
            txtPerAd.Focus();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'personelDbDataSet1.Tbl_Personel' table. You can move, or remove it, as needed.
           
            // TODO: This line of code loads data into the 'personelDbDataSet.Tbl_Personel' table. You can move, or remove it, as needed.


        }

        private void btnListele_Click(object sender, EventArgs e)
        {
            this.tbl_PersonelTableAdapter1.Fill(this.personelDbDataSet1.Tbl_Personel);
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into Tbl_Personel(PerAd,PerSoyad,PerSehir,PerMaas,PerMeslek,PerDurum) values (@p1,@p2,@p3,@p4,@p5,@p6)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtPerAd.Text);
            komut.Parameters.AddWithValue("@p2", txtPerSoyad.Text);
            komut.Parameters.AddWithValue("@p3", cmbBxPerSehir.Text);
            komut.Parameters.AddWithValue("@p4", mskdTxtPerMaas.Text);
            komut.Parameters.AddWithValue("@p5", txtPerMeslek.Text);
            komut.Parameters.AddWithValue("@p6", label8.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Personel Eklendi !");
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked == true)
            {
                label8.Text = "True";
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked == true)
            {
                label8.Text = "False";
            }
        }

        private void btnTemizle_Click(object sender, EventArgs e)
        {
            temizle();
        }

     

        private void label8_TextChanged(object sender, EventArgs e)
        {
            if (label8.Text=="True")
            {
                radioButton1.Checked = true;
            }

            if (label8.Text == "False")
            {
                radioButton2.Checked = true;
            }
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komutsil = new SqlCommand("Delete From Tbl_Personel Where Perid=@k1", baglanti);
            komutsil.Parameters.AddWithValue("@k1", txtId.Text);
            komutsil.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Kayıt Silindi !!");
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komutguncelle =
                new SqlCommand(
                    "Update Tbl_Personel Set PerAd=@a1,PerSoyad=@a2,PerSehir=@a3,PerMaas=@a4,PerDurum=@a5,PerMeslek=@a6 where Perid=@a7",
                    baglanti);
            komutguncelle.Parameters.AddWithValue("@a1", txtPerAd.Text);
            komutguncelle.Parameters.AddWithValue("@a2", txtPerSoyad.Text);
            komutguncelle.Parameters.AddWithValue("@a3", cmbBxPerSehir.Text);
            komutguncelle.Parameters.AddWithValue("@a4", mskdTxtPerMaas.Text);
            komutguncelle.Parameters.AddWithValue("@a5", label8.Text);
            komutguncelle.Parameters.AddWithValue("@a6", txtPerMeslek.Text);
            komutguncelle.Parameters.AddWithValue("@a7", txtId.Text);
            komutguncelle.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Personel Bilgi Güncellendi !");
        }

        private void btnIstatistik_Click(object sender, EventArgs e)
        {
            FrmIstatistik fr = new FrmIstatistik();
            fr.Show();
        }

        private void btnGrafik_Click(object sender, EventArgs e)
        {
            FrmGrafikler frg = new FrmGrafikler();
            frg.Show();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

    

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int secilen = dataGridView1.SelectedCells[0].RowIndex;

            txtId.Text = dataGridView1.Rows[secilen].Cells[0].Value.ToString();
            txtPerAd.Text = dataGridView1.Rows[secilen].Cells[1].Value.ToString();
            txtPerSoyad.Text = dataGridView1.Rows[secilen].Cells[2].Value.ToString();
            cmbBxPerSehir.Text = dataGridView1.Rows[secilen].Cells[3].Value.ToString();
            mskdTxtPerMaas.Text = dataGridView1.Rows[secilen].Cells[4].Value.ToString();
            label8.Text = dataGridView1.Rows[secilen].Cells[5].Value.ToString();
            txtPerMeslek.Text = dataGridView1.Rows[secilen].Cells[6].Value.ToString();
        }
    }
}
