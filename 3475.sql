--3475. DNA Pattern Recognition

select *,
    case when left(dna_sequence, 3) = 'ATG' then 1
    else 0
    end as has_start,

    case when right(dna_sequence, 3) in ('TAA', 'TAG', 'TGA') then 1
    else 0
    end as has_stop,

    case when dna_sequence like '%ATAT%' then 1
    else 0 
    end as has_atat,

    case when dna_sequence like '%GGG%' then 1 
    else 0
    end as has_ggg

from Samples;



