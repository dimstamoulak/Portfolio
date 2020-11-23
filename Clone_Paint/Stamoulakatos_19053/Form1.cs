using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Stamoulakatos_19053
{
    public partial class Form1 : Form
    {

        public Point current = new Point();
        public Point old = new Point();
        public Pen p = new Pen(Color.Black, 5);
        public Graphics g;
        public Random r;
        int count = 11; 
        int i = 0;  
        int j = 0; 
        int[] ind = { 90, 170, 90, 290, 90, 290, 210, 290, 210, 290, 210, 170, 210, 170, 90, 170, 90, 170, 152, 104, 152, 104, 210, 170, 150, 170, 150, 200, 132, 290, 132, 253, 132, 253, 158, 253, 158, 253, 158, 290 };

        public Form1()
        {
            InitializeComponent();
            g = panel1.CreateGraphics();
            p.SetLineCap(System.Drawing.Drawing2D.LineCap.Round, System.Drawing.Drawing2D.LineCap.Round, System.Drawing.Drawing2D.DashCap.Round);
            r = new Random();

        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();//epilogi exodou ap to menu

        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {

            MessageBox.Show("Project 1 by Dimitrios Stamoulakatos_19053");//mhnyma sto about
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            if (cd.ShowDialog() == DialogResult.OK)
                p.Color = cd.Color;
        }

        private void panel1_MouseDown(object sender, MouseEventArgs e)
        {
            old = e.Location;

            if (radioButton1.Checked)
                p.Width = 1;
            else if (radioButton2.Checked)
                p.Width = 8;
            else if (radioButton3.Checked)
                p.Width = 18;
            
        }

        private void panel1_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                current = e.Location;
                g.DrawLine(p,old , current);
                old = current;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            panel1.Invalidate();

        }

        private void clearToolStripMenuItem_Click(object sender, EventArgs e)
        {
            panel1.Invalidate();

        }

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        private void button3_Click(object sender, EventArgs e)
        {
            g.DrawLine(p, 100, 50, 300, 250);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            g.DrawEllipse(p, 300, 200, 150, 150);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            g.DrawEllipse(p, 500, 200, 300, 150);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            g.DrawRectangle(p, 200, 200, 100, 70);
        }

        private void panel1_MouseUp(object sender, MouseEventArgs e)
        {
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void colorsToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            if (cd.ShowDialog() == DialogResult.OK)
                p.Color = cd.Color;
        }

        private void button8_Click(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            count--;
            if (count > 0)
            {
                g.DrawLine(p, ind[i], ind[i + 1], ind[i + 2], ind[i + 3]);
                i = i + 4;
            }
            else
            {
                i = 0;
                count = 11;
                timer1.Stop();
            }
        }
    }
}
