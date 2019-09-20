# Monitoring of VMWare Esxi

# But
Récupérer les métriques de vmware puis les insérer dans influxdb afin d'afficher un dashboard Grafana

## Script

[vsphere-influxdb-go](https://github.com/Oxalide/vsphere-influxdb-go)

## Fichier de paramétrage JSON

```json
{
  "Domain": ".lab",
  "Interval": 60,
  "VCenters": [
    { "Username": "myuser", "Password": "mypasswd", "Hostname": "vcenter.IP" }
  ],

  "InfluxDB": {
    "Prefix": "vsphere_",
    "Hostname": "http://INFLUXDB_IP:8086",
    "Username": "myusername",
    "Password": "mypassword",
    "Database": "vmware_performance"
  },

  "Metrics": [
    {
      "ObjectType": [ "VirtualMachine", "HostSystem" ],
      "Definition": [
        { "Metric": "cpu.usage.average", "Instances": "*" },
        { "Metric": "cpu.usage.maximum", "Instances": "*" },
        { "Metric": "cpu.usagemhz.average", "Instances": "*" },
        { "Metric": "cpu.usagemhz.maximum", "Instances": "*" },
        { "Metric": "cpu.wait.summation", "Instances": "*" },
        { "Metric": "cpu.system.summation", "Instances": "*" },
        { "Metric": "cpu.ready.summation", "Instances": "*" },
        { "Metric": "cpu.readiness.average", "Instances": "*" },
        { "Metric": "cpu.usage.average", "Instances": "*" },
	    { "Metric": "disk.usage.average", "Instances": "*" },
	    { "Metric": "disk.usage.capacity", "Instances": "*" },
	    { "Metric": "disk.totalreadlatency.average", "Instances": "*" },
	    { "Metric": "disk.totalwritelatency.average", "Instances": "*" },
	    { "Metric": "disk.numberreadaveraged.average", "Instances": "*" },
	    { "Metric": "disk.numberwriteaveraged.average", "Instances": "*" },
	    { "Metric": "disk.read.average", "Instances": "*" },
	    { "Metric": "disk.write.average", "Instances": "*" },
	    { "Metric": "disk_writeoio_latest", "Instances": "*" },
	    { "Metric": "disk.readoio.latest", "Instances": "*" },
        { "Metric": "mem.usage.average", "Instances": "*" },
        { "Metric": "mem.usage.maximum", "Instances": "*" },
        { "Metric": "mem.consumed.average", "Instances": "*" },
        { "Metric": "mem.consumed.maximum", "Instances": "*" },
        { "Metric": "mem.active.average", "Instances": "*" },
        { "Metric": "mem.active.maximum", "Instances": "*" },
        { "Metric": "mem.vmmemctl.average", "Instances": "*" },
        { "Metric": "mem.vmmemctl.maximum", "Instances": "*" },
        { "Metric": "net.received.average", "Instances": "*" },
        { "Metric": "net.transmitted.average", "Instances": "*" },
        { "Metric": "mem.totalCapacity.average", "Instances": "*" },
        { "Metric": "net.packetsRx.summation", "Instances": "*" },
        { "Metric": "net.packetsTx.summation", "Instances": "*" },
        { "Metric": "net.throughput.usage.average", "Instances": "*" },
        { "Metric": "net.received.average", "Instances": "*" },
        { "Metric": "net.transmitted.average", "Instances": "*" },
        { "Metric": "net.throughput.usage.nfs.average", "Instances": "*" },
        { "Metric": "datastore.numberReadAveraged.average", "Instances": "*" },
        { "Metric": "datastore.numberWriteAveraged.average", "Instances": "*" },
        { "Metric": "datastore.read.average", "Instances": "*" },
        { "Metric": "datastore.write.average", "Instances": "*" },
        { "Metric": "datastore.totalReadLatency.average", "Instances": "*" },
        { "Metric": "datastore.totalWriteLatency.average", "Instances": "*" },
        { "Metric": "mem.capacity.provisioned.average", "Instances": "*"},
        { "Metric": "cpu.corecount.provisioned.average", "Instances": "*" }
      ]
    },

    {
      "ObjectType": [ "VirtualMachine" ],
      "Definition": [
      { "Metric": "datastore.datastoreVMObservedLatency.latest", "Instances": "*" }
      ]
    },
    {
      "ObjectType": [ "HostSystem" ],
      "Definition": [
        { "Metric": "disk.maxTotalLatency.latest", "Instances": "" },
        { "Metric": "disk.numberReadAveraged.average", "Instances": "*" },
        { "Metric": "disk.numberWriteAveraged.average", "Instances": "*" },
        { "Metric": "net.throughput.contention.summation", "Instances": "*" }
      ]
    },

    {
      "ObjectType": [ "Datastore" ],
      "Definition": [
        { "Metric": "disk.capacity.latest", "Instances": "*" },
        { "Metric": "disk.used.latest", "Instances": "*" }
      ]
    }
  ]
}
```

## Grafana modifications
Veuillez noter qu'il faut absolument modifier le measurement virtualmachine en **vpshere_virtualmachine**

## Documentation VMWare

 - [VMWARE metrics names](https://docs.vmware.com/en/vRealize-Operations-Manager/6.7/com.vmware.vcom.metrics.doc/GUID-1322F5A4-DA1D-481F-BBEA-99B228E96AF2.html)

