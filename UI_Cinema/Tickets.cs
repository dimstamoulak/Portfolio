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
    public partial class Tickets : Form
    {
        public Tickets()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Credit_Card cc1 = new Credit_Card();
            cc1.Show();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Available");
        }
    }
}
