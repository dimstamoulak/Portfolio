using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Birbou
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Movies m1 = new Movies();
            m1.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Class c1 = new Class();
            c1.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Bar b1 = new Bar();
            b1.Show();

        }

        private void button4_Click(object sender, EventArgs e)
        {
            Tickets t1 = new Tickets();
            t1.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            DayNews dn1 = new DayNews();
            dn1.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            login log1 = new login();
            log1.Show();
        }
    }
}
