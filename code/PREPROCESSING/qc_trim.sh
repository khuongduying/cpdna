# Check QC
fastqc data/FASTQ/*.gz -o out/QC

# Trims
# mamba activate dnaseq
p_raw="/mnt/rdisk/duydao/PROJECT/CPDNA_MANGO/data/FASTQ"
p_trim="/mnt/rdisk/duydao/PROJECT/CPDNA_MANGO/data/TRIM_FASTQ"

trimmomatic PE \
    -phred33 \
    -threads 56 \
    -trimlog $p_trim/WI1382403A01_ZKDL240000962-1A_HJ3L3DSXC_L2.log \
    -summary $p_trim/WI1382403A01_ZKDL240000962-1A_HJ3L3DSXC_L2_sum.log \
    $p_raw/WI1382403A01_ZKDL240000962-1A_HJ3L3DSXC_L2_1.fq.gz \
    $p_raw/WI1382403A01_ZKDL240000962-1A_HJ3L3DSXC_L2_2.fq.gz \
    $p_trim/WI1382403A01_L2_1_trimmed_paired.fq.gz \
    $p_trim/WI1382403A01_L2_1_trimmed_unpaired.fq.gz \
    $p_trim/WI1382403A01_L2_2_trimmed_paired.fq.gz \
    $p_trim/WI1382403A01_L2_2_trimmed_unpaired.fq.gz \
    ILLUMINACLIP:/mnt/rdisk/duydao/PROJECT/DNASEQ_BRCA12/ref/adapters/TruSeq3-PE-2.fa:2:30:10:8:3:true \
    HEADCROP:10 \
    CROP:140

# re-check QC
fastqc data/TRIM_FASTQ/*.gz -o out/QC/TRIMMED

# Trims
# mamba activate dnaseq
p_raw="/mnt/rdisk/duydao/PROJECT/CPDNA_MANGO/data/FASTQ/GENEMIND/WI1382403A_AW-939"
p_trim="/mnt/rdisk/duydao/PROJECT/CPDNA_MANGO/data/TRIM_FASTQ/GENEMIND"

trimmomatic PE \
    -phred33 \
    -threads 56 \
    -trimlog $p_trim/GENEMIND.log \
    -summary $p_trim/GENEMIND_sum.log \
    $p_raw/202405141519_2305151010_2P240501023US2S2693DX_A_20240514KtestDemo3_WI1382403A01_L00_R1.fq.gz \
    $p_raw/202405141519_2305151010_2P240501023US2S2693DX_A_20240514KtestDemo3_WI1382403A01_L00_R2.fq.gz \
    $p_trim/GENEMIND_L00_R1_trimmed_paired.fq.gz \
    $p_trim/GENEMIND_L00_R1_trimmed_unpaired.fq.gz \
    $p_trim/GENEMIND_L00_R2_trimmed_paired.fq.gz \
    $p_trim/GENEMIND_L00_R2_trimmed_unpaired.fq.gz \
    ILLUMINACLIP:/mnt/rdisk/duydao/PROJECT/DNASEQ_BRCA12/ref/adapters/TruSeq3-PE-2.fa:2:30:10:8:3:true \
    HEADCROP:10 \
    CROP:140

# re-check QC
fastqc data/TRIM_FASTQ/GENEMIND/*.gz -o out/QC/TRIMMED/GENEMIND