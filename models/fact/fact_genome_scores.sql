with src_scores as (select * from {{ ref("src_genome_scroes") }})
select movie_id, tag_id, round(RELEVANCE, 5) as relavance_score, RELEVANCE
from src_scores where RELEVANCE > 0
