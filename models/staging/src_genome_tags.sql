with raw_genome_tags as (select * from projectshowcase.dbtsnowflake.raw_genome_tags)
select tagid as tag_id, tag
from raw_genome_tags
