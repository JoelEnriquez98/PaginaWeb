using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PaginaWeb.Objects
{
    public class Client
    {
        public int NIT { get; set; }
        public string names { get; set; }
        public string lastNames { get; set; }
        public string address { get; set; }
        public int phone { get; set; }

        public Client(int NIT, string names, string lastNames, string address, int phone)
        {
            this.NIT = NIT;
            this.names = names;
            this.lastNames = lastNames;
            this.address = address;
            this.phone = phone;
        }

    }
}