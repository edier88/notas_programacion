// Tomado de: 
// https://devtoolstips.org/tips/en/manipulate-complex-json/
// https://www.youtube.com/watch?v=W8s9UiEhaLE&t=11s

// JSON de ejemplo, se tienen muchos subobjetos y subarrays que no nos interesan. (ir a la linea 168, variable "result" para ver el filtrado)
var jsonExample = {
    "version": "6.0",
    "date": "2024-01-18T18:07:06Z",
    "hosts": [
        {
            "host": "VERS_S7706_0101_VieTemporal",
            "name": "VERS_S7706_0101_VieTemporal",
            "description": "ARTE  Huawei VERS_S07706_0101 - 10.29.202.13",
            "proxy": {
                "name": "Zabbix_proxy3"
            },
            "status": "DISABLED",
            "templates": [
                {
                    "name": "Template Net Huawei VRP SNMPv2 RMS_V01_60minuto"
                }
            ],
            "groups": [
                {
                    "name": "DISPOSITIVOS ARTTE"
                },
                {
                    "name": "RMS ANILLO 2"
                },
                {
                    "name": "RMS DISPOSITIVOS"
                }
            ],
            "interfaces": [
                {
                    "type": "SNMP",
                    "ip": "10.29.202.13",
                    "port": "161",
                    "details": {
                        "community": "{$SNMP_COMMUNITY}"
                    },
                    "interface_ref": "if1"
                }
            ],
            "tags": [
                {
                    "tag": "ANILLO",
                    "value": "2"
                },
                {
                    "tag": "ARTTE",
                    "value": "S7706"
                }
            ],
            "macros": [
                {
                    "macro": "{$SNMP_COMMUNITY}",
                    "value": "1nt3mc4t3l$"
                }
            ],
            "inventory_mode": "DISABLED"
        },
        {
            "host": "VERS_S12704_0101_VieTemporal",
            "name": "VERS_S12704_0101_VieTemporal",
            "description": "ARTE Huawei VERS_S12704_0101 - 10.29.202.12",
            "proxy": {
                "name": "Zabbix_proxy3"
            },
            "status": "DISABLED",
            "templates": [
                {
                    "name": "Template Net Huawei VRP SNMPv2 RMS_V01_60minuto"
                }
            ],
            "groups": [
                {
                    "name": "DISPOSITIVOS ARTTE"
                },
                {
                    "name": "RMS ANILLO 2"
                },
                {
                    "name": "RMS DISPOSITIVOS"
                }
            ],
            "interfaces": [
                {
                    "type": "SNMP",
                    "ip": "10.29.202.12",
                    "port": "161",
                    "details": {
                        "community": "{$SNMP_COMMUNITY}"
                    },
                    "interface_ref": "if1"
                }
            ],
            "tags": [
                {
                    "tag": "ANILLO",
                    "value": "2"
                },
                {
                    "tag": "ARTTE",
                    "value": "S12704"
                }
            ],
            "macros": [
                {
                    "macro": "{$SNMP_COMMUNITY}",
                    "value": "1nt3mc4t3l$"
                }
            ],
            "inventory_mode": "DISABLED"
        },
        {
            "host": "YUMB_5683T_0101",
            "name": "YUMB_5683T_0101",
            "description": "Ingresa 22/11/2023",
            "proxy": {
                "name": "Zabbix_proxy2"
            },
            "templates": [
                {
                    "name": "Host Inventory"
                },
                {
                    "name": "Template ICMP Ping"
                },
                {
                    "name": "Template SNMP Interfaces 5600T"
                }
            ],
            "groups": [
                {
                    "name": "OLTs"
                },
                {
                    "name": "RMS DISPOSITIVOS"
                }
            ],
            "interfaces": [
                {
                    "type": "SNMP",
                    "ip": "10.32.20.118",
                    "port": "161",
                    "details": {
                        "community": "{$SNMP_COMMUNITY_SECURE}"
                    },
                    "interface_ref": "if1"
                }
            ],
            "tags": [
                {
                    "tag": "EQUIPO",
                    "value": "OLT/HUAWEI-5683T"
                }
            ],
            "inventory_mode": "DISABLED"
        }
    ]
}


// El siguiente script filtra y deja solo lo que se necesita
var result = jsonExample.hosts.map(i => {
    return {
        host: i.name,
        name: i.name,
        description: i.description,
        ip: i.interfaces[0].ip,
        tags: JSON.stringify(i.tags), // se filtran las tags y se convierte su subJSON en string para después formatearlo con REGEX
        groups: JSON.stringify(i.groups).replace(/"},{"name":"/g, ", ").replace(/\[{"name":"/g,"").replace(/"}]/g,""), // Se convierte el subJSON resultante en string y se vuelve a convertir dependiendo de las expresiones Regex
        proxy: i.proxy.name
    }
})

console.log(result) // El JSON resultante