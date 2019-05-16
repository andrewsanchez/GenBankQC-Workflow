assembly_level = config["assembly_level"]
format = config["format"]

checkpoint download:
    threads: 16
    output:
          outdir=directory(outdir)
    shell:
         "ncbi-genome-download -H -o {root} -m {root}/summary.tsv "
         "-p {threads} --section {section} -F {format} "
         "--assembly-level '{assembly_level}' "
         "--species-taxid {taxid} {group}"

