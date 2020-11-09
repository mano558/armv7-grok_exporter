# armv7-grok_exporter
grok_exporter  Export Prometheus metrics from arbitrary unstructured log data. (arm v7) 
Export [Prometheus] metrics from arbitrary unstructured log data.

## About Grok

[Grok] is a tool to parse crappy unstructured log data into something structured and queryable.

The [`grok_exporter`] aims at porting Grok from the ELK stack to [Prometheus] monitoring. The goal is to use Grok patterns for extracting Prometheus metrics from arbitrary log files.

## How to use this image

You need to provide [`grok_exporter`] with a config file in order to function properly. For more information on proper configuration of `grok_exporter` please refer to its [documentation].

There are various ways in which you can utilize this image, each however assumes that the log file you're trying to parse is reacheable by the grok_exporter container.

@see https://github.com/fstab/grok_exporter
