library(stringr)


test_input <- "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
input <- read.table("data/rosalind_dna1.txt")
nucleotides <- c(0,0,0,0)
names(nucleotides) <- c("A","C","G","T")
count_DNA_nucleotides <- function (string)
{
  str_vec <- str_split(string,"")[[1]]
  sapply(names(nucleotides),FUN = function(n){
    nucleotides[n] <<- length(which(str_vec == n))  
  })
}
count_DNA_nucleotides(test_input)
count_DNA_nucleotides(input$V1)
