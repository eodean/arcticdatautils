# Fix up metadata
orig <- dir("~/sync/",
            pattern = "\\.xml$",
            recursive = TRUE)
setwd("~/sync")

no_abstracts <- orig[which(sapply(orig, test_has_abstract))]
bad_enums <- orig[which(sapply(orig, test_has_bad_enum))]
bad_topics <- orig[which(sapply(orig, test_has_bad_topic))]

sapply(bad_enums, fix_bad_enum)
sapply(bad_topics, fix_bad_topic)
