with raw_genome_scroes as (select * from projectshowcase.dbtsnowflake.raw_genome_scroes)
select movieid as movie_id, tagid as tag_id, RELEVANCE
from raw_genome_scroes
